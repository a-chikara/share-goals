require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end
  describe 'ユーザー新規登録' do
    context '登録できる場合' do
      it 'nameの値が存在すれば登録できること' do
        expect(@room).to be_valid
      end
    end

    context '登録できない場合' do
      it 'nameが空では登録できないこと' do
        @room.name = ""
        @room.valid?
        expect(@room.errors.full_messages).to include("Nameを入力してください")
      end
    end
    
  end
end
