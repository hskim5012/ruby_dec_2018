
class TimesController < ApplicationController

def index
  Time.zone = 'Central Time (US & Canada)'
  @date = Time.zone.now.strftime("%b %d, %Y, %I:%M %p")

end

# def to_s(format = :default)
#   if format == :db
#     utc.to_s(format)
#   elsif formatter = ::Time::DATE_FORMATS[format]
#     formatter.respond_to?(:call) ? formatter.call(self).to_s : strftime(formatter)
#   else
#     "#{time.strftime("%Y-%m-%d %H:%M:%S")} #{formatted_offset(false, 'UTC')}" # mimicking Ruby Time#to_s format
#   end
# end

end
