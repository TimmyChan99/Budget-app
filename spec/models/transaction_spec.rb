require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    user = User.create(id: 1, name: 'user', email: 'user@dev.co', password: '123456')
    Entity.new(name: 'Harry Potter', amount: 15, author_id: user.id)
  end
  before { subject.save }

  it 'Should be valid ' do
    expect(subject).to be_valid
  end

  it 'Name should not be nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Icon should not be nil' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
