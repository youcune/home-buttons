require 'irkit'

class IRKitService
  def self.post_data(data)
    IRKit::Device.new(address: 'irkit').post_messages(format: 'raw', freq: 38, data: data)
  end
end
