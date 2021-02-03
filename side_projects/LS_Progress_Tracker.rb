require 'date'

############ CONSTANTS ############
START_DATE = '2020-11-23'
COMPLETION_HOURS_LOW = 1200
COMPLETION_HOURS_HIGH = 1800
DAYS_PER_WEEK = 7

############ PROMPTS ############
def prompt(msg)
  puts "=> #{msg}"
end

############ ELASPED TIME ############
def weeks_elasped
  Date.parse(START_DATE).upto(Date.today).count.fdiv(7).round
end

def days_elasped
  DateTime.now.mjd - DateTime.parse(START_DATE).mjd
end

############ CONVERSIONS ############
def avg_hours_per_week(current_total_hours)
  ((current_total_hours.to_f / days_elasped) * DAYS_PER_WEEK)
end

def format_input(input)
  hours = input.split(':')[0].to_i
  minutes = ((input.split(':')[1].to_f) / 60).round(2)
  hours + minutes
end

############ TOTAL WEEKS ############
def total_weeks_low(current_total_hours)
  (COMPLETION_HOURS_LOW / avg_hours_per_week(current_total_hours)).round
end

def total_weeks_high(current_total_hours)
  (COMPLETION_HOURS_HIGH / avg_hours_per_week(current_total_hours)).round
end

############ WEEKS REMAINING ############
def weeks_remaining_low(current_total_hours)
  hours_left = (COMPLETION_HOURS_LOW - current_total_hours.to_f)
  average = avg_hours_per_week(current_total_hours)
  (hours_left / average).round
end

def weeks_remaining_high(current_total_hours)
  hours_left = (COMPLETION_HOURS_HIGH - current_total_hours.to_f)
  average = avg_hours_per_week(current_total_hours)
  (hours_left / average).round
end

############ END DATES ############
def end_date_low(weeks_remaining_low)
  Date.today.next_day(weeks_remaining_low.to_i * DAYS_PER_WEEK).strftime('%m/%d/%Y')
end

def end_date_high(weeks_remaining_high)
  Date.today.next_day(weeks_remaining_high.to_i * DAYS_PER_WEEK).strftime('%m/%d/%Y')
end

############ START MAIN PROGRAM ############
prompt("Hello Isaiah!")

prompt("Please enter your TOTAL HOURS (hh:mm) from Toggl since 11/23/2020:")
current_total_hours = format_input(gets.chomp)
weekly_average = (avg_hours_per_week(current_total_hours)).round

puts "\n\n"
prompt("You are averaging about #{weekly_average} hours per week right now!")
puts "\n\n"

prompt("It has been #{weeks_elasped} weeks since you started Launch School." )

tw_low = total_weeks_low(current_total_hours)
tw_high = total_weeks_high(current_total_hours)
prompt("It will take approx. #{tw_low} to #{tw_high} total weeks to finish Launch School at your current pace.")

wr_low = weeks_remaining_low(current_total_hours)
wr_high = weeks_remaining_high(current_total_hours)
prompt("You have about #{wr_low} to #{wr_high} more weeks remaining.")
puts "\n\n"

ed_low = end_date_low(wr_low)
ed_high = end_date_high(wr_high)
prompt("I estimate that you will complete Launch School between #{ed_low} and #{ed_high} if you keep up this pace.")
