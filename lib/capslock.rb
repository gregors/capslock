require 'capslock/version'
require 'os'

module Capslock
  # set caps lock to ctrl
  def self.linux
    # works on ubuntu
    `setxkbmap -layout us -option ctrl:nocaps`
  end
end

#require "capslock/version"
#require 'win32/registry'
#
#module Capslock
#  def ESC
#    if Gem.win_platform?
#      Win32::Registry::HKEY_CURRENT_USER.open('SYSTEM\CurrentControlSet\Control\Keyboard Layout' do |reg|
#        puts reg['Keyboard Layout']
#        #reg['Keyboard Layout'] =  '???'
#      end
#    else
#      puts 'Only windows os supported'
#    end
#  end
#end
#
