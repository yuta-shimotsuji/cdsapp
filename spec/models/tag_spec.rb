require 'rails_helper'

RSpec.describe Tag, type: :model do

  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }
  let(:tag) { create(:tag) }
  let(:post_tag) { create(:post_tag, post_id: post.id, tag_id: tag.id) }

  describe "タグの投稿に関して" do
    it "タグを投稿ができること" do
    end
    it "複数タグを投稿ができること" do
    end
    it "タグを選択していなくても投稿ができること" do
    end
  end
end
