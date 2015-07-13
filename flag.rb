#!/usr/bin/env ruby

require "colorize"

def stars line
  if line % 2 == 0
    print (" *"*6 + "  ").white.on_blue
  else
    print (" " + " *"*6 + " ").white.on_blue
  end
end

def stripe line, length
  if line % 2 == 0
    puts (" " * length).on_red
  else
    puts (" " * length).on_white
  end
end

(0...13).each do |line|
  if line < 7
    stars(line)
    stripe(line, 36)
  else
    stripe(line, 50)
  end
end
