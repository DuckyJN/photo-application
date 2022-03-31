class PhotosController < ApplicationController
    def new
        @photo = Photo.new
    end

    def create
        @photo = Photo.new(photo_params)
        if @photo.save
            flash[:notice]="Photo uploaded"
            redirect_to user_index_path
        else
            flash[:alert] ||= []
            @photo.errors.full_messages.each do |message|
                flash[:alert].push(message)
            end
            redirect_to new_photo_path
        end
    end

    private
    def photo_params
        p params
        params.require(:photo).permit(:user_id, :gallery_id, :title, :image)
    end
end
