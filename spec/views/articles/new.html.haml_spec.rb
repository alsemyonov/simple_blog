require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/articles/new" do
  before(:each) do
    assigns[:article] = Factory.build(:article)
    render 'articles/new'
  end

  it %(should have a form to create article) do
    response.should have_tag('form[action=?]', articles_path)
  end
  
  it %(should have field "title" with label) do
    response.should have_tag('input[name=?]', 'article[title]')
    response.should have_tag('label[for=?]', 'article_title')
  end

  it %(should have field "content" with label) do
    response.should have_tag('textarea[name=?]', 'article[content]')
    response.should have_tag('label[for=?]', 'article_content')
  end

  it %(should have button to submit form) do
    response.should have_tag('input[type=submit]')
  end
end
