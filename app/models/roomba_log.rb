class RoombaLog < ActiveRecord::Base
  CLEAN_INTERVAL = 18.hours

  def self.store!
    create!(cleaned_at: Time.current)
  end

  def self.last_cleaned_time
    order(:cleaned_at).last.try!(:cleaned_at)
  end

  def self.cleaned_recently?
    last_cleaned_time.present? && last_cleaned_time <= CLEAN_INTERVAL.ago
  end
end
