require "test_helper"

describe "PostsController" do
	describe "GET :index" do
		before do
			get :index
		end

		it "renders posts/index" do
			must_render_template "posts/index"
		end

		it "responds with success" do
			must_respond_with :success
		end
	end 
end