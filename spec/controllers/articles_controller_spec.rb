require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ArticlesController do
  
  def mock_article(stubs = {})
    mock_model(Article, stubs)
  end

  describe "GET / (#index)" do
    it "should list of articles" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST / (#create)" do
    describe "with valid params" do
      before do
        @article = mock_article(:save => true)
      end

      it "exposes a newly built article as @article" do
        Article.should_receive(:new).with('these' => 'params').and_return(@article)
        post :create, :article => {:these => 'params'}
        assigns(:article).should equal(@article)
      end

      it "redirects to the created article" do
        Article.stub!(:new).and_return(@article)
        post :create, :article => {}
        response.should redirect_to(article_path(@article))
      end
    end

    describe "with invalid params" do
      before do
        @article = mock_article(:save => false)
      end

      it "re-render the 'new' template" do
        Article.stub!(:new).and_return(@article)
        post :create, :article => {}
        response.should render_template('new')
      end

    end
  end
end
