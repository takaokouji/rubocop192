# encoding: utf-8

require 'rubocop192/version'

# Rubocop192 namespace.
module Rubocop192
  module_function

  def check_ruby_version(version)
    (version >= '1.9.2' && version < '1.9.3')
  end
end

if Rubocop192.check_ruby_version(RUBY_VERSION)
  require 'json'

  # monkey patch for Json.parser=.
  module JSON
    class << self
      def parser=(parser) # :nodoc:
        @parser = parser
        remove_const :Parser if const_defined? :Parser, false
        const_set :Parser, parser
      end
    end
  end
end
