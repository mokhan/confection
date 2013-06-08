class Category < ActiveRecord::Base
  attr_accessible :name, :slug
  has_many :cakes

  def to_param
    slug
  end
end
