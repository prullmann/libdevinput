#!/usr/bin/env ruby

# This example shows how to read from /dev/input/event0, reject everything
# but key press events and print them to STDOUT

require 'rubygems'
require 'libdevinput'

filename = ARGV[0] || "/dev/input/event0"
puts "opening #{filename}"
dev = DevInput.new filename

puts "waiting for events to come..."
dev.each do |event|
  puts "got event #{event}"
  # reject everything but key events
  next unless event.type == 1
  # reject everything but press events
  next unless event.value == 1
  puts "got key press event of key >>#{event.code_str}<<!"
end

