require 'rails_helper'

RSpec.describe Member, type: :model do
  context 'children' do
    subject { member.children }

    let!(:member) { FactoryBot.create(:member) }
    let!(:child) { FactoryBot.create(:child, member_id: member.id) }

    it 'should return the members children' do
      expect(subject.first).to eq(child)
    end
  end

  context 'active members' do
    subject { Member.active }

    before do
      5.times { FactoryBot.create(:member) }
      FactoryBot.create(:member, date_left: Date.today - 5.days)
    end

    it 'should only return users who have not returned' do
      expect(subject.size).to eq(5)
    end
  end
end
