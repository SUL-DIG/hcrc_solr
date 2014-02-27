require 'FileUtils'

FileUtils.cp_r(Dir['../converted_needs_author/*'],'../converted')
FileUtils.rm_rf('../converted_needs_author')