require 'rails_helper'

RSpec.describe PostTag, type: :model do
  describe 'アソシエーションの確認' do

    let(:user) { create(:user) }
    let(:post) { create(:post, user: user) }
    let(:tag) { create(:tag) }
    let(:post_tag) { create(:post_tag, post_id: post.id, tag_id: tag.id) }

    it 'タグ付け投稿ができるか' do
      expect(post_tag).to be_valid
    end

    it "複数タグを投稿ができること" do
    end
    
    it "タグを選択していなくても投稿ができること" do
    end

    it '存在しない投稿にタグづけができない状態か' do
      post_tag.post_id = nil
      expect(post_tag).not_to be_valid
    end
  end
end
