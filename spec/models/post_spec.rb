require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '新規投稿機能' do

    context '投稿できる場合' do
      it 'imageが空でも保存できること' do
        @post.image = nil
        expect(@post).to be_valid
      end    

      it '全て正しく入力できていれば新規投稿できる' do
        expect(@post).to be_valid
      end

    end

    context '投稿できない場合' do
      it 'titleがなければ投稿できない' do
        @post.title = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Titleを入力してください")
      end

      it 'memoがなければ投稿できない' do
        @post.memo = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Memoを入力してください")
      end

      it 'categoryがなければ投稿できない' do
        @post.category = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Categoryを入力してください")
      end

      it 'deadlineがなければ投稿できない' do
        @post.deadline = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Deadlineを入力してください")
      end

      it 'roomが紐付いていないと投稿できないこと' do
        @post.room = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Roomを入力してください")
      end

      
      it 'userが紐付いていないと投稿できないこと' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Userを入力してください")
      end
    end
  end
end
