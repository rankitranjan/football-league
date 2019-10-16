namespace :football_league do
    desc "Parse football_league.dat file and store in model"
    task :parse => :environment do
    	Parse.start
    end
end

# rake football_league:parse