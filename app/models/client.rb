class Client < ActiveRecord::Base
    has_many :rentals
    has_many :vhs, through: :rentals

    def return_one(vhs)

        self.rentals.where(vhs_id: vhs.id).last.update(current: false)
        puts "returned"
        # rental = self.rentals.find{|r| r.vhs == vhs}
        # rental.update(current: false)
    end

    def self.first_rental(name, home_address, vhs)
        client_name = Client.create(name: name, home_address: home_address)
        vhs_rental = Rental.create(client_id: client_name.id, vhs_id: vhs.id)
    end

end
