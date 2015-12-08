require 'hue'

class HueService
  def self.living_on!
    living_group.on!
  end

  def self.living_off!
    living_group.off!
  end

  private
  def self.living_group
    Hue::Client.new.group(1)
  end
end
