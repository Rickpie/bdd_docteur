class AddSpecialty2 < ActiveRecord::Migration[7.0]
  def change
    add_reference :specialties, :doctor, foreign_key: true
  end
end
