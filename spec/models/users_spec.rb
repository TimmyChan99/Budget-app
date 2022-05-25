require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Rida', email: 'example@mail.com', password: 'password')
  end
  before { subject.save }

  it 'name should notbe nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should valid the name' do
    subject.name = 'Rida'
    expect(subject).to be_valid
  end
end
