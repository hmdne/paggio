#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'paggio/utils'
require 'paggio/html'
require 'paggio/css'
require 'paggio/formatter'

class Paggio
  def self.css(*args, &block)
    Formatter.new.format(CSS.new(*args, &block)).to_s
  end

  def self.html(*args, &block)
    Formatter.new.format(HTML.new(*args, &block)).to_s
  end

  def self.html!(&block)
    Formatter.new.format(HTML.new(&block).root!).to_s
  end
end
