class AddAuthlogicToUsers < ActiveRecord::Migration
  def change
  #Authlogic
  add_column :users, :crypted_password,   :string,  :null => false, :default => ""
  add_column :users, :password_salt,      :string,  :null => false, :default => ""
  add_column :users, :persistence_token,  :string,  :null => false, :default => ""
  add_column :users, :perishable_token,   :string, :default => "", :null => false  
  add_column :users, :login_count,        :integer, :null => false, :default => 0
  add_column :users, :failed_login_count, :integer, :null => false, :default => 0
  add_column :users, :last_request_at,    :datetime
  add_column :users, :current_login_at,   :datetime
  add_column :users, :last_login_at,      :datetime
  add_column :users, :current_login_ip,   :string
  add_column :users, :last_login_ip,      :string
  end
  add_index :users, ["email"], :name => "index_agents_on_email", :unique => true
end
