require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/articles/index" do
  before(:each) do
    @article_1 = Factory.create(:article, :title => 'Test article')
    @article_2 = Factory.create(:article, :title => 'Test article 2')
    assigns[:articles] = [@article_1, @article_2]
    render 'articles/index'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should show me list of articles" do
    response.should have_tag('ul.b_articles')
    response.should have_tag('h2', 'Test article')
    response.should have_tag('h2', 'Test article 2')
  end
end
