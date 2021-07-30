class Reservation < ApplicationRecord
    belongs_to :guest, index: true 
    belongs_to :listing, index: true


        def start_must_be_before_end_time
            errors.add(:start_date, "must be before end time") unless
                start_date < end_date
        end 
    end
end
