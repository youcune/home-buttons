class NotificationService
  def self.notify(message)
    event = 'notify'
    key = Rails.application.secrets.ifttt_maker_key
    url = "https://maker.ifttt.com/trigger/#{event}/with/key/#{key}"
    HTTParty.post(url,
      body: { value1: message }.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )
  end
end
