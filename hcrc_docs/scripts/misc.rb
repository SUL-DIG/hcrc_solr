Dir.glob('../processing/*.xml') do |filename|

replace_BOOK = '<field name="type">Book'
replace_JOUR = '<field name="type">Journal'
replace_highschools = '>High school<'
replace_middleschools = '>Middle school<'
replace_elementaryschools = '>Elementary school<'
replace_sla = '>Second language acquisition<'
replace_endspace = '</'
replace_amp = '&amp;'


#Doing replacements for capitalized types.
outdata = File.read(new_file).gsub(/<field name="type">BOOK/, "#{replace_BOOK}").gsub(/<field name="type">JOUR/, "#{replace_JOUR}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for grade level group plurals.
outdata = File.read(new_file).gsub(/>High schools</, "#{replace_highschools}").gsub(/>Middle schools</, "#{replace_middleschools}").gsub(/>Elementary schools</, "#{replace_elementaryschools}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for keyword plurals.
outdata = File.read(new_file).gsub(/>Second language acquisitions</, "#{replace_sla}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for extra space before closing tag.
outdata = File.read(new_file).gsub(/&/, "#{replace_amp}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

File.open(new_file,'a') do |f|
  f.puts "</add>"
end
end
