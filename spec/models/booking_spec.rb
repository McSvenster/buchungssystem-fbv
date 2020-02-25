require 'rails_helper'

RSpec.describe Booking, type: :model do
  let (:booking) {build(:valid_booking)}
  it "is invalid, if ddate is before birthdate" do
    booking.ddate = "16.01.2016 17:32"
    booking.birthdate = "17.01.2016"
    booking.valid?
    expect(booking.errors[:birthdate]).to include(' kann nicht nach dem Sterbedatum liegen.')
  end

  it "is invalid, if lsdate is later 10:00 on bdate" do
    booking.ddate = "14.01.2016 17:32"
    booking.lsdate = "17.01.2016 10:01".to_datetime
    booking.bdate = "17.01.2016".to_date
    booking.valid?
    expect(booking.errors[:lsdate]).to include(' Die Anlieferung muss bis spätestens 10:00 Uhr erfolgen.')
  end

  it "is invalid, if lsdate equals bdate more than five times" do
    5.times do
      create(:lsdate_booking)
    end
    booking.ddate = Date.today - 3.days
    booking.lsdate = Date.today + ((1 - Date.today.wday) % 7) + 10.hours
    booking.bdate = Date.today + ((1 - Date.today.wday) % 7)
    booking.valid?
    expect(booking.errors[:lsdate]).to include(' Für diesen Tag können wir keine Anlieferung inkl. Kremation mehr annehmen.')
  end
end