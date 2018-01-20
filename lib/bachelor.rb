require 'pry'
# require 'pry-nav' # version conflict
def get_first_name_of_season_winner(data, season)
  first_name = nil

  data.each do |season_number, contestant_array|
    # binding.pry
    if season_number == season
      contestant_array.each do |contestant|
        # binding.pry
        if contestant["status"] == "Winner"
          first_name = contestant["name"].split.shift
          # binding.pry
        end
      end
    end
  end

  first_name
end

def get_contestant_name(data, occupation)
  name = nil

  data.each do |season_number, contestant_array|
    # binding.pry
    contestant_array.each do |contestant|
      # binding.pry
      if contestant["occupation"] == occupation
        name = contestant["name"]
        # binding.pry
      end
    end
  end

  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season_number, contestant_array|
    # binding.pry
    contestant_array.each do |contestant|
      # binding.pry
      if contestant["hometown"] == hometown
        count += 1
        # binding.pry
      end
    end
  end

  count
end

def get_occupation(data, hometown)
  occupation = []

  data.each do |season_number, contestant_array|
    # binding.pry
    contestant_array.each do |contestant|
      # binding.pry
      if contestant["hometown"] == hometown
        occupation << contestant["occupation"]
        # binding.pry
      end
    end
  end
  occupation.shift
end

def get_average_age_for_season(data, season)
  ages = []

  data.each do |season_number, contestant_array|
    # binding.pry
    if season_number == season
      contestant_array.each do |contestant|
        # binding.pry
        ages << contestant["age"].to_f
      end
    end
  end

  (ages.reduce(0, :+) / ages.length.to_f).round(0)
end
