class Renting < ApplicationRecord
    belongs_to :admin, class_name: "User"
    belongs_to :guest, class_name: "User"
end
