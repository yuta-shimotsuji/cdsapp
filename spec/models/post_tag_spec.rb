require 'rails_helper'

RSpec.describe PostTag, type: :model do
  describe 'アソシエーションの確認' do

    let(:user) { create(:user) }
    let(:post) { create(:post, user: user) }
    let(:tag) { create(:tag) }
    let(:post_tag) { create(:post_tag, post_id: post.id, tag_id: tag.id) }

    it 'アソシエーションが組めているか' do
      expect(post_tag).to be_valid
    end
  end
end
