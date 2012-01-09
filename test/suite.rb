#!/usr/bin/env ruby
# suite.rb -- spreadsheet -- 26.07.2011 -- zdavatz@ywesee.com
# suite.rb -- spreadsheet -- 09.01.2012 -- mayurirajguru@gmail.com

require 'find'
require 'rubygems'

#here = File.expand_path('./lib', File.dirname(__FILE__))
here = File.dirname(__FILE__)

$: << here

Find.find(here) do |file|
	if /[^suite\W]\.rb$/o.match(file)    
		file = "./" + file #fix
		# i'd rather use require_relative instead of appending ./ in file - Mayuri 
		# but require relative won't work in 1.8.6 ruby and is available for 1.9.x 
		#this fix works in all the versions 
    require file
	end
end
