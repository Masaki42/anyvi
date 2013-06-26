class Video < ActiveRecord::Base
  attr_accessible :filename, :title, :user_id
end
