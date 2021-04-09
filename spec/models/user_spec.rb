require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it 'nameが空では登録できないこと' do
      @user.name = ''
      @user.valid?
      # expect(@user.errors.full_messages).to include("Name can't be blank")
      binding.pry
    end
  end
end
