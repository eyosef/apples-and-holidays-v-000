require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]



  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
  # holiday_hash.each do |seasons|
  #   seasons.each do |holiday|
  #     if holiday == :christmas
  #         winter[:christmas] = 'testing'
  #     end #if statement
  #   end #each do |holiday|
  # end #each do |seasons|

  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_supplies[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash.dig(:winter, :christmas) + holiday_hash.dig(:winter, :new_years)
  winter_supplies
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)

  formatted = holiday_supplies.to_a
  formatted.each do |season, holidays|
    puts "#{season.capitalize}:"
  formatted.each do |holidays, supplies|
    puts "#{holidays}:#{}" #.join(" ")"#{supplies}:"
  end #each
end #each
  formatted
  binding.pry

  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },

  #hash.index(value)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
