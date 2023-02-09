class Doctor < ApplicationRecord
    has_many:appointments
    has_many:patient, through: :appointments
    belongs_to:city
    has_many:specialty
end
