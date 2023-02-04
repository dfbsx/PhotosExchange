class SharedController < ApplicationController
    def shared
        @photos = Photo.joins("JOIN users ON users.id = photos.user_id AND users.department="+"'#{Current.user.department.to_s}' AND users.id != "+" '#{Current.user.id}'")
    end

    def my_photos
        @photos = Photo.where(user:Current.user)
    end

    def download
        @info =params[:id]
        @photo =Photo.find(params[:id]) #Photo.where(id:params[:id])
        @photo.downloads.create(by_who:Current.user.email, date:Time.now, )
    end

    def history
        @downloads =Download.where(photo_id:params[:id])
    end
end
