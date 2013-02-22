class Recipe < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :title, :type_recipe, :ingredients, :url, :comments, :votes, :score, :author

  has_many :ingredients, :dependent => :destroy
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |p| p.values.all?(&:blank?) }, :allow_destroy => true

  has_one :user
  has_many :comment

  alias_attribute :user, :author

end
