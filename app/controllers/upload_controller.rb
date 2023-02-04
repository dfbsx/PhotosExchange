class UploadController < ApplicationController
    def upload

    end
    def submit 
        begin
            @photo = Current.user.photos.create(name:params[:name], data_dodania:Time.now, desc:params[:desc], pic: params[:pic])
            redirect_to result_path, method: :get, params:{succes:true}
        rescue =>e
            redirect_to result_path, method: :get, params:{succes:false}
        end
    end

    def result
        @result = params[:succes]
        @photos = Photo.where(user:Current.user)
    end
end
