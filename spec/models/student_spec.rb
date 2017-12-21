require 'rails_helper'

RSpec.describe Student, type: :model do
  let(:student) { build(:student) }

  context 'When is new' do
    it { expect(student).to be_valid }
  end

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :register }

  context 'When duplicate register' do
    it 'insert student with same register' do
      create(:student, register: '12345678')
      other_student = build(:student, register: '12345678')
      expect(other_student).to_not be_valid
    end
  end

end
