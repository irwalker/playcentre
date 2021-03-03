require 'rails_helper'

RSpec.describe Child, type: :model do
  let(:child) { build(:child) }

  describe '#full_name' do
    subject { child.full_name }

    let(:child) { build(:child, first_name: 'Lil', last_name: 'Hodor') }

    it 'should return the first and last name' do
      expect(subject).to eq('Lil Hodor')
    end
  end

  describe '#days_attending' do
    subject { child.days_attending }

    let(:child) { FactoryBot.build(:child, tuesday: true, thursday: true, friday: true) }

    it 'should return the list of days they attend' do
      expect(subject).to eq('Tuesday,Thursday,Friday')
    end
  end
end
