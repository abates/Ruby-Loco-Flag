#!/usr/bin/env ruby

require "ansi/code"
require "colorize"

def print_column colnum
  (0...13).each do |rownum|
    if rownum < 7 and colnum == 0
      print " ".on_blue
    elsif rownum < 7 and colnum == 14
      print " ".on_blue
    elsif rownum < 7 and colnum < 14
      if colnum % 2 == 1 && rownum % 2 == 0
        print "*".on_blue
      elsif colnum % 2 == 0 && rownum % 2 == 1
        print "*".on_blue
      else
        print " ".on_blue
      end
    elsif rownum % 2 == 0
      print " ".on_red
    else
      print " ".on_white
    end
    print ANSI.down
    print ANSI.left(1)
  end
end

def by_column
  # clear screen
  print "\e[H\e[2J"
  print ANSI.down(5)

  (0...50).each do |colnum|
    # move to 0, 5
    print_column(colnum)
    print ANSI.up(13)
    print ANSI.right
  end
  print ANSI.down(13)
  puts
end

by_column
