class Video < ActiveRecord::Base

  attr_accessible :filename, :title, :user, :user_id, :video_file

  belongs_to :user

  validates :title, presence: true

  # I must figure out how to do it right, without rewriting original file.
  has_attached_file :video_file, styles: { :original => { :geometry => "640x360", :format => 'mp4' } }, :processors => [:ffmpeg]


end
