require 'capslock/version'
require 'os'

module Capslock
  # set caps lock to ctrl
  def self.linux
    # works on ubuntu
    `setxkbmap -layout us -option ctrl:nocaps`
  end

  def self.osx
    raise 'osx not yet unsupported'
    #http://superuser.com/questions/545208/remap-keys-via-command-line-in-mac-os-x
  end

  def self.windows
    raise 'windows not yet unsupported'
    #http://www.howtogeek.com/howto/windows-vista/disable-caps-lock-key-in-windows-vista/
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
