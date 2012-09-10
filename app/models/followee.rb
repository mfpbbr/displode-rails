class Followee < ActiveRecord::Base
  attr_accessible :avatar, :entity, :firstName, :handle, :lastName
end
