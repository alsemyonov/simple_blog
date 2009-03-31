Given /^I have articles titled (.+)$/ do |titles|
  Article.destroy_all
  titles.split(', ').each do |title|
    Article.create!(:title => title, :content => "The text about #{title}")
  end
end

