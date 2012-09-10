class Post < ActiveRecord::Base
  attr_accessible :content, :latitude, :longitude, :scope
end
