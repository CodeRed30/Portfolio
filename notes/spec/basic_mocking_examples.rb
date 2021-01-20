describe PostsController do
  describe "#index" do
    it "finds the 10 latest published posts" do
      10.times { |i| create(:post, :published, title: "published#{i}") }
      create(:post, published: false, title: "unpublished")

      get :index

      expect(assigns[:posts].map(&:title)).to match_array(%w(
        published0 published1 published2 published3 published4 published5
        published6 published7 published8 published9
      ))
    end
  end
end

describe PostsController do
  describe "#index" do
    it "finds the 10 latest published posts" do
      posts = double("latest_published")
      allow(Post).to receive(:latest_published).and_return(posts)

      get :index

      expect(assigns[:posts]).to eq(posts)
    end
  end
end

describe Dashboard do
  describe "#posts" do
    it "returns posts created today" do
      create :post, title: "first_today", created_at: Time.now.beginning_of_day
      create :post, title: "last_today", created_at: Time.now.end_of_day
      create :post, title: "yesterday", created_at: 1.day.ago.end_of_day
      dashboard = Dashboard.new(posts: Post.all)

      result = dashboard.posts

      expect(result.map(&:title)).to match_array(%w(first_today last_today))
    end
  end

  around do |example|
    Timecop.freeze { example.run }
  end
end

describe Dashboard do
  describe "#posts" do
    it "returns posts created today" do
      posts_published_today = double("published_today")
      expect(Post).to receive(:today).and_return(posts_published_today)
      dashboard = Dashboard.new(posts: Post.all)

      expect(dashboard.posts).to eq posts_published_today
    end
  end

  around do |example|
    Timecop.freeze { example.run }
  end
end
