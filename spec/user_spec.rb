require 'rails_helper'

RSpec.describe Budget, type: :model do
  subject do
    User.create(name: 'Vic Man', password: '123456', email: 'vicman@gmail.com', confirmed_at: Time.now)
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
  end
end