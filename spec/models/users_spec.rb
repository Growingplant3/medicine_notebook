require 'rails_helper'

RSpec.describe User, type: :model do
  before do 
    @user = build(:user)
  end

  describe 'バリデーション' do
    it '名前、メールアドレス、パスワードがあるか' do
      expect(@user.valid?).to eq(true)
    end

    it '名前がないとダメ' do
      @user.name = nil
      expect(@user.valid?).to eq(false)
    end

    it 'メールアドレスがないとダメ' do
      @user.email = nil
      expect(@user.valid?).to eq(false)
    end

    it 'パスワードがないとダメ' do
      @user.password = nil
      expect(@user.valid?).to eq(false)
    end
  end
end