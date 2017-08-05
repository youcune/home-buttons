module Irable
  extend ActiveSupport::Concern

  class_methods do
    def signals
      self.const_get(:SIGNALS)
    end

    def respond_to_missing?(method, include_private)
      signals.has_key?(method.to_s.delete('!').to_sym)
    end

    def method_missing(method)
      if respond_to? method
        IRKitService.post_data(signals[method.to_s.delete('!').to_sym])
      else
        raise ArgumentError, "Invalid method #{method.to_s} triggered!"
      end
    end
  end
end
