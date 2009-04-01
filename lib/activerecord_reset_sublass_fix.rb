# A fix for using factory_girl with cucumber
module ActiveRecord
  class Base
    def self.reset_subclasses #:nodoc:
      nonreloadables = []
      subclasses.each do |klass|
        unless ActiveSupport::Dependencies.autoloaded? klass
          nonreloadables << klass
          next
        end
      end
      @@subclasses = {}
      nonreloadables.each { |klass| (@@subclasses[klass.superclass] ||= []) << klass }
    end
  end
end
