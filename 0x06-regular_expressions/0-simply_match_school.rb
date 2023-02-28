#!/usr/bin/env ruby

regex = /School/
puts ARGV[0].scan(regex).join
