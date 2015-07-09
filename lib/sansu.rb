require 'sansu/error'
require 'sansu/operator'
require 'sansu/version'

module Sansu
  def self.validate(array)
    fail Error::NoValuesError if array.empty?

    array.each do |value|
      begin
        Float(value)
      rescue ArgumentError, TypeError
        raise Error::IncludingNonNumericError
      end
    end

    true
  end
end

Array.__send__(:prepend, Sansu::Operator)
