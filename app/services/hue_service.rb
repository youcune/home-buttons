class HueService
  def self.living_on!
    living_group.on!
  end

  def self.living_off!
    living_group.off!
  end

  def self.off!
    client.lights.map(&:off!)
  end

  private
  def self.living_group
    client.group(1)
  end

  def self.client
    Hue::Client.new
  end
end
