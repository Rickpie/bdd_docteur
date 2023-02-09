require 'faker'


doctors = []
10.times do
    city = City.create!(name: Faker::Name.name)
end

10.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Number.number(digits: 5), city_id:City.all.sample.id)
  doctors << doctor
end

patients = []
10.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id:City.all.sample.id)
  patients << patient
end

doctors.each do |doctor|
    patients.each do |patient|
      appointment = Appointment.create!(date: Faker::Date.between(from: '2023-02-01', to: '2023-02-26'), doctor: doctor, patient: patient, city_id:City.all.sample.id)
    end
  end