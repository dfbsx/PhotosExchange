class SharedController < ApplicationController
    def shared
        @photos = Photo.where(User.find(user_id).department:Current.user.department)
    end

    def my_photos
        @photos = Photo.where(user:Current.user)
    end

    def download
        @info =params[:id]
        @photo =Photo.find(params[:id]) #Photo.where(id:params[:id])
        @photo.downloads.create(by_who:Current.user.email, date:Time.now)
    end

    def history
        @info =params[:id]
        #@photo =Photo.find(params[:id])
        @downloads =Download.where(photo_id:params[:id])
    end
end
