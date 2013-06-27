class Video < ActiveRecord::Base

  attr_accessible :filename, :title, :user_id, :video_file

  #belongs_to :user

  validates_presence_of :title

  # Have to figure out how to do it right, without rewriting original file.
  has_attached_file :video_file, styles: { :original => { :geometry => "640x360", :format => 'mp4' } }, :processors => [:ffmpeg]


  #validates_attachment_content_type :video_file, content_type: "video/mpeg", "video/quicktime", "video/x-msvideo"
  #validates_attachment_size size: :video_file, in: 0..50.megabytes

  #process_in_background :video_file

end
