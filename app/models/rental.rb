class Rental < ActiveRecord::Base
    belongs_to :client
    belongs_to :vhs

    def due_date
        due_date = self.created_at.to_datetime.to_date + 7
        puts "This VHS of #{self.vhs.movie.title} is due on #{due_date}."
        due_date
    end

    def self.past_due_date
        
    end
end