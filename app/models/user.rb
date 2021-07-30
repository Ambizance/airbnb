class User < ApplicationRecord
    has_many :reservations
    has_many :listings
    has_many :admin_rents, foreign_key: 'admin_id', class_name: "Renting"
    has_many :guest_rents, foreign_key: 'guest_id', class_name: "Renting"
  

    validates :email, 
        presence: true, 
        uniquness: true
        format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

    validates :phone,
        presence: true,
        format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: "please enter a valid french number" }

    
end
