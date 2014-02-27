require 'FileUtils'
FileUtils.mkdir '../processing'
FileUtils.cp_r(Dir['../to_convert/*'],'../processing')
system 'cd ../processing; for file in *.txt; do mv "$file" "${file%txt}xml"; done'