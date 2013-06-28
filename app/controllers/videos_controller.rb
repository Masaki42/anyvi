class VideosController < ApplicationController

	before_filter :find_video, only: [:show, :edit, :update, :destroy]

	def index
		@videos = Video.all
	end

	def show
	end

	def new
		@video = Video.new
	end

	def edit
	end

	def create
		@video = Video.create(params[:video]) 
		if @video.errors.empty?
			flash[:success] = "Video was successfully uploaded."
			redirect_to video_path(@video)
		else
			flash[:error] = "You forgot something. Please correct it."
			render "new"
		end
	end

	def update
		@video.update_attributes(params[:video])
		if @video.errors.empty?
			flash[:success] = "Video was successfully updated."
			redirect_to video_path(@video)
		else
			flash.now[:error] = "You forgot something. Please correct it."
			render "edit"
		end		
	end

	def destroy
		@video.destroy
		flash[:success] = "Video was successfully deleted."
		redirect_to action: "index"
	end

private

	def find_video
		@video = Video.find(params[:id])
		# Why does it not work?
		render_404 unless @video
	end

end
