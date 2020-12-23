class Movie < ActiveRecord::Base
    has_many :vhs
    has_many :rentals, through: :vhs
    has_many :movie_genres
    has_many :genres, through: :movie_genres

    def report_stolen
        not_rented = self.vhs.where(rentals.where(current: false))
        random = not_rented[rand(not_rented.count - 1)]
        random.destroy
        puts "THANK YOU FOR YOUR REPORT. WE WILL LAUNCH AN INVESTIGATION."
    end

end