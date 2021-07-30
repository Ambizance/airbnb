class Listing < ApplicationRecord
    has_many :reservations
    belongs_to :city, index: true
    belongs_to :admin, index: true 

    def overlaping_reservation?(datetime)
        (listing.reservations).each do |reservation|
            if (datetime > reservation.start_date) && (datetime < reseravtion.end_date)
                errors.add(:start_date, "already booked at this time")
            end
        end
        # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
    end

end