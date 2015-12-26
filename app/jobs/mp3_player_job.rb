class Mp3PlayerJob < ActiveJob::Base
  queue_as :default

  def perform(file)
    system("mpg321 '#{file}'")
  end
end
