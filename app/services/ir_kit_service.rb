class IRKitService
  def self.post_data(data)
    IRKit::Device.new(address: 'irkit').post_messages(format: 'raw', freq: 38, data: data)
  end

  def self.get_data
    IRKit::Device.new(address: 'irkit').get_messages.data.to_s
  end
end
