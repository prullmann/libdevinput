libdevinput - a ruby library to read input device events from /dev/input/eventX on linux systems

This ruby library makes it easy to read events from linux event devices. These device files, residing in /dev/input/ get created for a number of different human input devices like keyboards, mice, touchscreens, joysticks and the like.

Example:

require 'rubygems'
require 'libdevinput'

dev = DevInput.new "/dev/input/event0"
dev.each do |event|
  puts "got event #{event}"
end


Each event consists of the following fields:
event.time: A Time object of the event time
event.tv_sec: An Integer with the number of seconds since epoch
event.tv_usec: An Integer with the sub-seconds value in milliseconds
event.type: An Integer with the type code
event.type_str: A String representation of the type if available
event.code: An Integer with the event code
event.code_str: A String representation of the code if available
event.value: An Integer with the event value
event.value_str: A String representation of the value if available

The library currently only reads raw events. It does not read the capabilities of a device via ioctl, nor does it interpret the states of modifier keys.
If you want to change this or something else, you are more than welcome to fork this project.

This library was influenced by evtest.c, the event device test program by Vojtech Pavlik

