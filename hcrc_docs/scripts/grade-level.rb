Dir.glob('../processing/*.xml') do |filename|

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

#Doing replacements for 1st grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">1st<\/field>/, "#{add_1g}").gsub(/<field name="grade_level_number">1st\t<\/field>/, "#{add_1g}").gsub(/<field name="grade_level_number">1st\r<\/field>/, "#{add_1g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 2nd grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">2nd<\/field>/, "#{add_2g}").gsub(/<field name="grade_level_number">2nd\t<\/field>/, "#{add_2g}").gsub(/<field name="grade_level_number">2nd\r<\/field>/, "#{add_2g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 3rd grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">3rd<\/field>/, "#{add_3g}").gsub(/<field name="grade_level_number">3rd\t<\/field>/, "#{add_3g}").gsub(/<field name="grade_level_number">3rd\r<\/field>/, "#{add_3g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 4th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">4th<\/field>/, "#{add_4g}").gsub(/<field name="grade_level_number">4th\t<\/field>/, "#{add_4g}").gsub(/<field name="grade_level_number">4th\r<\/field>/, "#{add_4g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 5th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">5th<\/field>/, "#{add_5g}").gsub(/<field name="grade_level_number">5th\t<\/field>/, "#{add_5g}").gsub(/<field name="grade_level_number">5th\r<\/field>/, "#{add_5g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 6th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">6th<\/field>/, "#{add_6g}").gsub(/<field name="grade_level_number">6th\t<\/field>/, "#{add_6g}").gsub(/<field name="grade_level_number">6th\r<\/field>/, "#{add_6g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 7th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">7th<\/field>/, "#{add_7g}").gsub(/<field name="grade_level_number">7th\t<\/field>/, "#{add_7g}").gsub(/<field name="grade_level_number">7th\r<\/field>/, "#{add_7g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 8th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">8th<\/field>/, "#{add_8g}").gsub(/<field name="grade_level_number">8th\t<\/field>/, "#{add_8g}").gsub(/<field name="grade_level_number">8th\r<\/field>/, "#{add_8g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 9th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">9th<\/field>/, "#{add_9g}").gsub(/<field name="grade_level_number">9th\t<\/field>/, "#{add_9g}").gsub(/<field name="grade_level_number">9th\r<\/field>/, "#{add_9g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 10th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">10th<\/field>/, "#{add_10g}").gsub(/<field name="grade_level_number">10th\t<\/field>/, "#{add_10g}").gsub(/<field name="grade_level_number">10th\r<\/field>/, "#{add_10g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 11th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">11th<\/field>/, "#{add_11g}").gsub(/<field name="grade_level_number">11th\t<\/field>/, "#{add_11g}").gsub(/<field name="grade_level_number">11th\r<\/field>/, "#{add_11g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 12th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">12th<\/field>/, "#{add_12g}").gsub(/<field name="grade_level_number">12th\t<\/field>/, "#{add_12g}").gsub(/<field name="grade_level_number">12th\r<\/field>/, "#{add_12g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

puts "Grade level has been systematically fixed."
end

