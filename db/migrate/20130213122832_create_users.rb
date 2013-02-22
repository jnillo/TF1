class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :email
      t.string   :encrypted_password, :limit => 128, :default => "", :null => false
      t.string   :password_salt, :default => "",  :null => false
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :current_sign_in_at
      t.string   :first_name
      t.string   :surnames
      t.datetime :remember_created_at
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.integer  :sign_in_count, :default => 0,     :null => false
      t.boolean  :saw_tracking_codes, :default => false
      t.integer :user_type, :default => 0, :null => false
      t.string :description
      t.string :image

      t.references :recipe

      t.timestamps
    end
  end
end