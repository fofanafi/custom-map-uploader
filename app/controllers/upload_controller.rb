class UploadController < ApplicationController
  def index
     render :file => 'app/views/upload/uploadfile.rhtml'
  end
  def uploadFile
		tmp = Tempfile.new("tile")
		tmp.write("blah")
		tmp.close
		render :text => "temp file " + tmp.path + " created"

    #post = Image.save(params[:upload])
		#render :text => "File has been uploaded successfully"
  end
end
