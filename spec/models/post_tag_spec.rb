require 'rails_helper'

RSpec.describe PostTag, type: :model do
  describe 'アソシエーションの確認' do

    let(:user) { create(:user) }
    let(:post) { create(:post, user: user) }
    let(:tags) { create_list(:tag, 2) }
    let(:post_tag) { create(:post_tag, post_id: post.id, tag_id: tags[0].id) }
    let(:post_tag2) { create(:post_tag, post_id: post.id, tag_id: tags[1].id) }

    it 'タグ付けができること' do
      expect(post_tag).to be_valid
    end

    it "一つの投稿に、複数のタグ付けができること" do
      expect(post_tag).to be_valid
      expect(post_tag2).to be_valid
    end
    
    it "タグを選択していなくても投稿ができること" do
      expect(post).to be_valid
    end

    it '存在しない投稿にタグ付けができない状態であること' do
      post_tag.post_id = nil
      expect(post_tag).not_to be_valid
    end
  end
end
