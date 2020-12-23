class Client < ActiveRecord::Base
    has_many :rentals
    has_many :vhs, through: :rentals

    def return_one(vhs)

        self.rentals.where(vhs_id: vhs.id).last.update(current: false)
        puts "returned"
        # rental = self.rentals.find{|r| r.vhs == vhs}
        # rental.update(current: false)
    end

end