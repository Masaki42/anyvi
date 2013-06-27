class Video < ActiveRecord::Base

  attr_accessible :filename, :title, :user_id, :video_file

  belongs_to :user

  validates_presence_of :title

  has_attached_file :video_file, styles: { :medium => { :geometry => "640x480", :format => 'flv' }, :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 } }, processors: [:ffmpeg]

  process_in_background :video_file

end
