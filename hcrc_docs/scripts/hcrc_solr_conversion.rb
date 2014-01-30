# Change File Names
print "Which file? "
filename = gets.chomp + '.txt'
new_file = filename + '.new'


# Replacing spreadsheet columns with xml tags.
replace_TY = '<doc><field name="type">'
replace_A1 = '</field><field name="author">'
replace_A2 = '</field><field name="corp_author">'
replace_T1 = '</field><field name="title">'
replace_Y1 = '</field><field name="year">'
replace_SP = '</field><field name="pages">'
replace_KW = '</field><field name="keywords">'
replace_N1 = '</field><field name="notes">'
replace_PB = '</field><field name="publisher">'
replace_CY = '</field><field name="pub_place">'
replace_LA = '</field><field name="language">'
replace_D1 = '</field><field name="date">'
replace_CN = '</field><field name="call_number">'
replace_SC = '</field><field name="state_country">'
replace_T2 = '</field><field name="series_title">'
replace_V1 = '</field><field name="series_vol">'
replace_V2 = '</field><field name="series_num_vol">'
replace_IS = '</field><field name="issue">'
replace_ED = '</field><field name="edition">'
replace_G1 = '</field><field name="grade_level_group">'
replace_G2 = '</field><field name="grade_level_number">'
replace_AB = '</field><field name="abstract">'
replace_ER = '</field></doc>'
replace_amp = '&amp;'
replace_endspace = '</'

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
replace_BOOK = '<field name="type">Book'
replace_JOUR = '<field name="type">Journal'
replace_highschools = '>High school<'
replace_middleschools = '>Middle school<'
replace_elementaryschools = '>Elementary school<'
replace_sla = '>Second language acquisition<'
replacerem_ty = '<doc><field name="type">'
replacerem_gl = '</field><field name="grade_level_number">'

#Add <add> tags.
File.open(new_file,'w') do |fo|
  fo.puts "<add>"
	File.foreach(filename) do |li|
    	fo.puts li
	end
end

File.open(new_file,'a') do |f|
  f.puts "</add>"
end

#Doing replacements for type.
outdata = File.read(new_file).gsub(/TY\s\s-\s/, "#{replace_TY}").gsub(/TY\s\s_\s/, "#{replacerem_ty}").gsub(/Ty\s\s-\s/, "#{replacerem_ty}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for authors.
outdata = File.read(new_file).gsub(/\nA1\s\s-\s/, "#{replace_A1}").gsub(/\nA2\s\s-\s/, "#{replace_A2}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for title and series title.
outdata = File.read(new_file).gsub(/\nT1\s\s-\s/, "#{replace_T1}").gsub(/\nT2\s\s-\s/, "#{replace_T2}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for year.
outdata = File.read(new_file).gsub(/\nY1\s\s-\s/, "#{replace_Y1}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for pages.
outdata = File.read(new_file).gsub(/\nSP\s\s-\s/, "#{replace_SP}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for keywords.
outdata = File.read(new_file).gsub(/\nKW\s\s-\s/, "#{replace_KW}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for notes.
outdata = File.read(new_file).gsub(/\nN1\s\s-\s/, "#{replace_N1}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for publisher and publication place.
outdata = File.read(new_file).gsub(/\nPB\s\s-\s/, "#{replace_PB}").gsub(/\nCY\s\s-\s/, "#{replace_CY}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for languages.
outdata = File.read(new_file).gsub(/\nLA\s\s-\s/, "#{replace_LA}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for date.
outdata = File.read(new_file).gsub(/\nD1\s\s-\s/, "#{replace_D1}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for call number.
outdata = File.read(new_file).gsub(/\nCN\s\s-\s/, "#{replace_CN}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for state/country.
outdata = File.read(new_file).gsub(/\nSC\s\s-\s/, "#{replace_SC}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for volume, issue, and edition.
outdata = File.read(new_file).gsub(/\nV1\s\s-\s/, "#{replace_V1}").gsub(/\nV2\s\s-\s/, "#{replace_V2}").gsub(/\nIS\s\s-\s/, "#{replace_IS}").gsub(/\nED\s\s-\s/, "#{replace_ED}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for grade level information.
outdata = File.read(new_file).gsub(/\nG1\s\s-\s/, "#{replace_G1}").gsub(/\nG2\s\s-\s/, "#{replace_G2}").gsub(/G3\s\s-\s/, "#{replacerem_gl}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for abstract.
outdata = File.read(new_file).gsub(/\nAB\s\s-\s/, "#{replace_AB}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Doing replacements for end of document.
outdata = File.read(new_file).gsub(/ER\s\s-\s/, "#{replace_ER}").gsub(/\tER/, "#{replace_ER}").gsub(/&/, "#{replace_amp}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

puts "Columns have been converted to solr document tags."


#Doing replacements for 1st grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">1st<\/field>/, "#{add_1g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 2nd grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">2nd<\/field>/, "#{add_2g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 3rd grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">3rd<\/field>/, "#{add_3g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 4th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">4th<\/field>/, "#{add_4g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 5th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">5th<\/field>/, "#{add_5g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 6th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">6th<\/field>/, "#{add_6g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 7th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">7th<\/field>/, "#{add_7g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 8th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">8th<\/field>/, "#{add_8g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 9th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">9th<\/field>/, "#{add_9g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 10th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">10th<\/field>/, "#{add_10g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 11th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">11th<\/field>/, "#{add_11g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Doing replacements for 12th grade.
outdata = File.read(new_file).gsub(/<field name="grade_level_number">12th<\/field>/, "#{add_12g}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

puts "Grade level has been systematically fixed."

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
outdata = File.read(new_file).gsub(/\s</, "#{replace_endspace}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

require 'fileutils'
Dir.glob(new_file) do |f|
    FileUtils.mv f, "#{File.dirname(f)}/#{File.basename(f,'.*')}.xml"
puts "Check your new SOLR xml file before indexing."
end
