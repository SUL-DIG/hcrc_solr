Dir.glob('../converted_needs_author/*.xml') do |filename|
remove_spaces = ' '
remove_end_space = '</'
#Doing replacements for type.

outdata = File.read(filename).gsub(/<space\/>/, "#{remove_spaces}").gsub(/\t<\//, "#{remove_end_space}")
File.open(filename, 'w') do |out|
  out << outdata
end
end
