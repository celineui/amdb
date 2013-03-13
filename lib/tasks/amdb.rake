namespace :amdb do
  desc "Wazzzzup"
  task :say_hello => :generate_report do
    puts "Howdy"
  end

  desc "Generate my report"
  task :generate_report => :environment do
    puts "Here's your report:"
    puts "Movies:            #{Movie.count}"
  end
end
