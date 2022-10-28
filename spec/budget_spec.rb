require 'rails_helper'

RSpec.describe Budget, type: :model do
  subject do
    user = User.create(name: 'Vic Man', password: '123456', email: 'vicman@gmail.com', confirmed_at: Time.now)
    Budget.new(name: 'Ford 150', amount: '100', user:)
  end

  before { subject.save }

  context 'Test for validation : ' do
    it 'Name should be valid' do
      expect(subject).to be_valid
    end

    it 'Name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'Amount should be present' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end
  end
end
