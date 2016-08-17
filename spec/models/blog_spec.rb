require 'rails_helper'

RSpec.describe Blog, type: :model do

  describe "#create" do
    shared_examples_for "create blogs" do
      it "データが作成される事" do
        blog = Blog.create!({ 
          name: "Bob",
          title: "Hello",
          content: "Hello world",
          published: published_flag
        })
        expect(blog).not_to be_nil
        expect(blog.id).not_to be_nil
        expect(blog.id).to be >= 1
        expect(blog.published).to eq(published_flag)
      end
    end

    context "公開の場合" do
      let(:published_flag) { true }
      it_behaves_like "create blogs"
    end

    context "非公開の場合" do
      let(:published_flag) { false }
      it_behaves_like "create blogs"
    end
  end

  describe "#show" do
    context "公開の場合" do
    end
    context "非公開の場合" do
    end
  end

  describe "#update" do
    context "公開の場合" do
    end
    context "非公開の場合" do
    end
  end

  describe "#destroy" do
    context "公開の場合" do
    end
    context "非公開の場合" do
    end
  end

end
