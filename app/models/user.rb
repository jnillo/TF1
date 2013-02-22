class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :token_authenticatable,
    :omniauthable, :encryptable, :trackable, encryptor: :restful_authentication_sha1

  attr_accessible :email, :password, :password_confirmation, :password_salt, :remember_me, :first_name, :last_name, :surnames, :description, :user_type, :recipes

  validates_presence_of :first_name, :last_name, :email, on: :create

  validates_uniqueness_of  :email, :case_sensitive => false
  validates_format_of  :email, with: Devise.email_regexp, allow_blank: true, if: :email_changed?

  validates_length_of  :password, within: Devise.password_length, allow_blank: true

  alias_attribute :last_name, :surnames

  has_many :recipe

end
