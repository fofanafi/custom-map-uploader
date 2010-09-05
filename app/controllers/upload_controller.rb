class UploadController < ApplicationController
  def index
     render :file => 'app/views/upload/uploadfile.html.erb'
  end
  def uploadFile
		post = Image.save(params[:upload])
		render :file => 'app/views/viewmap.html.erb'
  end
end

