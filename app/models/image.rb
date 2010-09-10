require 'RMagick'

class Image < ActiveRecord::Base

	def self.save(upload)
		data = upload['image'].read
		tmp = Tempfile.new('tile')
		tmp.write data
		tmp.close
		
		dirpath = File.join('public', 'data', 'tiles')
		Tiler.new.make_tiles(tmp.path, :format => 'png', :output_dir => dirpath, :zoom_levels => 0..2)

	end

	protected

	def sanitize_filename(file_name)
		# get only the filename, not the whole path (from IE)
		just_filename = File.basename(file_name) 
		# replace all none alphanumeric, underscore or perioids
		# with underscore
		just_filename.sub(/[^\w\.\-]/,'_') 
	end
end
