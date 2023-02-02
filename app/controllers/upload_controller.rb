class UploadController < ApplicationController
    def upload

    end
    def submit 
        @photo = Current.user.photos.create(name:'test', data_dodania:Time.now, desc:'To opis zdjęcia')
        redirect_to result_path, method: :get, params:{succes:true}
    end

    def result
        @result = params[:succes]
        @photos = Photo.where(user:Current.user)
    end
end
