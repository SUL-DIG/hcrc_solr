Dir.glob('../to_convert/*.txt') do |filename|
	require 'FileUtils'
FileUtils.cp_r(Dir['../to_convert/*'],'../originals')
FileUtils.rm_r(Dir['../to_convert/*'])
end
puts "Original text files have been transferred from the to_convert folder and into the originals folder."