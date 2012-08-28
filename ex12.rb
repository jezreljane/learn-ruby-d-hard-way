require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
  f.each_line { |line| p line }
  puts f.base_uri	        # <URI::HTTP:0x4oe6ef2 URL:http://www.ruby-lang.org/en/>
  puts f.content_type     # "text/html"
  puts f.charset          # "iso-8859-1"
  puts f.content_encoding # "[]
  puts f.last_modified    # Thu Dec 05 02:45:02 UTC 2002
end

=begin
Difference between require and include

require
-runs another file
-also tracks what you've required in the past and won't
require the same file twice
-allows to load a library and prevent it from being
loaded more than once

include
-takes all the methods drom another module and includes them
into the current module
-a language-level
-the primary way to "extend" classes with other modules
(usually referred to as mix-ins)
=end

