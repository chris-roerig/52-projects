require 'fileutils'
require 'active_support/all'

year       = Time.new.year
start_date = Date.today 
end_date   = Date.today.end_of_year
my_days    = [0] # sunday is day 0

result = (start_date..end_date).to_a.select do |k| 
  next unless my_days.include?(k.wday)

  month_day = k.strftime("%m-%d")
  path      = "projects/#{year}/#{month_day}"
  file      = "#{path}/.gitignore"

  FileUtils.touch(file)
end

