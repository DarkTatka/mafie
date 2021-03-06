class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :force => true do |t|
      t.column :name,                      :string, :limit => 100, :default => '', :null => true
      t.column :email,                     :string, :limit => 100
      t.column :crypted_password,          :string, :limit => 40
      t.column :salt,                      :string, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :remember_token,            :string, :limit => 40
      t.column :remember_token_expires_at, :datetime
      t.column :activation_code,           :string, :limit => 40
      t.column :activated_at,              :datetime
      t.column :motto,							 :string
      t.column :year_of_birth,				 :integer
      t.column :height,							 :integer
      t.column :last_seen_in,					 :string
      t.column :occupation,					 :string
      t.column :death_token,					 :string
      t.column :photo, 							 :string
    end
    add_index :users, :email, :unique => true
  end

  def self.down
    drop_table "users"
  end
end
