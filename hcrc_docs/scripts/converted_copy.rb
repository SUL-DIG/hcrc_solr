require 'FileUtils'
system 'cd ../processing; for file in *.xml.new; do mv "$file" "${file%xml.new}xml"; done'
FileUtils.mkdir '../converted_needs_author'
FileUtils.cp_r(Dir['../processing/*'],'../converted_needs_author')
FileUtils.rm_rf('../processing')