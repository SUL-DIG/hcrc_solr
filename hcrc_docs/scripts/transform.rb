#!/usr/bin/ruby
SCRIPTS=%w{processing_copy.rb text_to_xml.rb converted_copy.rb author_conv.rb remove_spaces.rb converted_author_copy.rb move_originals.rb}
MAX_RETRIES=3

SCRIPTS.each do |script|
  MAX_RETRIES.times do |n|
    puts "Now beginning #{script}."
    system "ruby #{script}"
    puts "#{script} is complete."
    break if $?.exitstatus == 0
  end
end