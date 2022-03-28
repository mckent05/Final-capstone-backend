require 'rails_helper'

RSpec.describe Reservation, type: :model do
  new_user = User.new(username: 'mckent05')

  subject do
    Reservation.new
  end

  it 'should be invalid because start_date is nil' do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end

  it 'should be invalid because end_date is nil' do
    subject.end_date = nil
    expect(subject).to_not be_valid
  end

  it 'should be invalid because start_date is less than current date' do
    subject.user = new_user
    subject.start_date = '2022-03-24'
    subject.end_date = '2022-03-27'
    expect(subject).to_not be_valid
  end

  it 'should be invalid because end_date is lesser than start_date' do
    subject.user = new_user
    subject.start_date = Date.current
    subject.end_date = '2022-03-24'
    expect(subject).to_not be_valid
  end

  it 'should be valid because all inputs are correct' do
    subject.user = new_user
    subject.start_date = Date.current
    subject.end_date = '2022-03-28'
    expect(subject).to be_valid
  end
end
