class Ingredient < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :amount

  belongs_to :recipe
end
