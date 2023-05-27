require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '新規保険の登録' do
    context "情報が保存できる場合" do
      it '必須項目が存在すれば登録することができる' do
        expect(@item).to be_valid
      end
    end

    context "情報が保存できない場合" do
      it 'ユーザーが紐付いていなければ投稿できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
      it 'titleが空では登録できない' do
        @item.title = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Title can't be blank")
      end
      it 'conceptが空では登録できない' do
        @item.concept = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Concept can't be blank")
      end
      it 'featureが空では登録できない' do
        @item.feature = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Feature can't be blank")
      end
    end
  end
end
