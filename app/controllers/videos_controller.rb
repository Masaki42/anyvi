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
		@video = Video.new(params[:video])
	end

	def update		
	end

	def destroy
	end

private

	def find_video
		@video = Video.find(params[:id])
	end

end
