Dir.glob('../converted_needs_author/*.xml') do |filename|
remove_spaces = ' '
#Doing replacements for type.

outdata = File.read(filename).gsub(/<space\/>/, "#{remove_spaces}")
File.open(filename, 'w') do |out|
  out << outdata
end
end