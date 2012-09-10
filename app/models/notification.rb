class Notification < ActiveRecord::Base
  attr_accessible :action, :client, :entity, :object
end
