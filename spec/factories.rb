require 'factory_girl'

Factory.define(:article) do |a|
  a.title 'Title of article'
  a.content {|a| "#{a.title} - это очень интересно!"}
end
