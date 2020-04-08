require 'csv'
require 'rake'

namespace :cheesbus do
  task :import => :environment do
    CSV.foreach('lib/tasks/cheesbu_sheet.csv') do |row|
      cheesbu = Cheeseburger.new(date: row[0].to_date,
                                 country: row[1],
                                 location: row[2],
                                 height: row[3].to_f,
                                 diameter: row[4].to_f,
                                 taste: row[5],
                                 additional_comment: row[6],
                                 rating: row[7].to_i,
                                 reviewer: row[8])

      cheesbu.save(validate: false)
    end
  end
end