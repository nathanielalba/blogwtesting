require "test_helper"

describe "Post" do
	before do
		@post = Post.new(title: "Today was really bad",
										 body: "I really didn't like today for the fact that it was very bad.")
	end

	it "has a title attribute" do
		@post.must_respond_to :title
	end

	it "has a body attribute" do
		@post.must_respond_to :body
	end

	it "cannot be saved with an empty title" do
		@blank_title = Post.new(title: "     ",
			                     body: "faallala")
		refute @blank_title.valid?
	end

	it "cannot be saved without body text" do
		@blank_body = Post.new(title: "day",
													 body: "    ")
		refute @blank_body.valid?
	end
end