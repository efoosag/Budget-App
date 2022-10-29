require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    user = User.create(name: 'Solo Boss', password: '123456', email: 'soloboss@gmail.com', confirmed_at: Time.now)
    Group.new(name: 'Car', icon: 'https://icon.com/icon.jpg', user:)
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
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  end
end
