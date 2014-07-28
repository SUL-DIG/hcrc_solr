Dir.glob('../converted_needs_author/*.xml') do |filename|
remove_spaces = ' '
remove_end_space = '</'
#Doing replacements for type.

outdata = File.read(filename).gsub(/<space\/>/, "#{remove_spaces}").gsub(/\t<\//, "#{remove_end_space}")
File.open(filename, 'w') do |out|
  out << outdata
end

# Adding grades.
add_1g = '<field name="grade_level_number">1st grade</field>'
add_2g = '<field name="grade_level_number">2nd grade</field>'
add_3g = '<field name="grade_level_number">3rd grade</field>'
add_4g = '<field name="grade_level_number">4th grade</field>'
add_5g = '<field name="grade_level_number">5th grade</field>'
add_6g = '<field name="grade_level_number">6th grade</field>'
add_7g = '<field name="grade_level_number">7th grade</field>'
add_8g = '<field name="grade_level_number">8th grade</field>'
add_9g = '<field name="grade_level_number">9th grade</field>'
add_10g = '<field name="grade_level_number">10th grade</field>'
add_11g = '<field name="grade_level_number">11th grade</field>'
add_12g = '<field name="grade_level_number">12th grade</field>'
last_space = '</field>'

#Doing replacements for 1st grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">1st\s<\/field>/, "#{add_1g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 2nd grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">2nd\s<\/field>/, "#{add_2g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 3rd grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">3rd\s<\/field>/, "#{add_3g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 4th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">4th\s<\/field>/, "#{add_4g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 5th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">5th\s<\/field>/, "#{add_5g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 6th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">6th\s<\/field>/, "#{add_6g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 7th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">7th\s<\/field>/, "#{add_7g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 8th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">8th\s<\/field>/, "#{add_8g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 9th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">9th\s<\/field>/, "#{add_9g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 10th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">10th\s<\/field>/, "#{add_10g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 11th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">11th\s<\/field>/, "#{add_11g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for 12th grade.
outdata = File.read(filename).gsub(/<field name="grade_level_number">12th\s<\/field>/, "#{add_12g}")
File.open(filename, 'w') do |out|
  out << outdata
end 

#Doing replacements for end space.
outdata = File.read(filename).gsub(/\s<\/field>/, "#{last_space}")
File.open(filename, 'w') do |out|
  out << outdata
end 

puts "Grade level has been systematically fixed."


end
