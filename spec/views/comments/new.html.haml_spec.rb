require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/comments/new" do
  before(:each) do
    @article = Factory(:article)
    assigns[:article] = @article
    render 'comments/new'
  end

  it "shows a title of article" do
    response.should have_tag('h2', @article.title)
  end

  it "have a form for comment" do
    response.should have_tag('form[action=?]', article_comments_path(@article))
  end
end
