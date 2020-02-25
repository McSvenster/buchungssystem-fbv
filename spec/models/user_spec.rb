require 'rails_helper'

RSpec.describe User, type: :model do
  let(:planer) {build(:planer)}
  let(:bestatter) {build(:bestatter)}
  it "validates presence of email" do
    planer.email = nil
    planer.valid?
    expect(planer.errors[:email]).to include('muss ausgefüllt werden')
  end
end