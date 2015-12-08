require_relative 'irkit_service'

class RoombaService
  CLEAN_SIGNAL = [5598,1994,1798,5794,1798,5794,1798,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738,39779,5598,1994,1798,5794,1738,5794,1738,5794,5794,1994,1798,5794,1738,5794,1738]
  LAST_CLEANED_TIME_FILE = './last_cleaned_time.txt'
  CLEAN_INTERVAL = 24.hours

  def self.clean!
    IRKitService.post_data(CLEAN_SIGNAL)
    update_cleaned_time
  end

  def self.clean_if_interval!
    clean! if last_cleaned_time <= CLEAN_INTERVAL.ago
  end

  def self.last_cleaned_time
    time = File.read(LAST_CLEANED_TIME_FILE) rescue 0
    Time.at(time)
  end

  private
  def self.update_cleaned_time
    File.write(LAST_CLEANED_TIME_FILE, Time.current.to_i)
  end
end