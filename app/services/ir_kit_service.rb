class IRKitService
  def self.post_data(data)
    IRKit::Device.new(address: 'irkit').post_messages(format: 'raw', freq: 38, data: data)

    # 連続して送ると届かないっぽいので休憩
    sleep 2
  end
end
