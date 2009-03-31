# encoding: utf-8
Допустим /^в блоге есть статьи, названные (.+)/ do |titles|
  titles.split(', ').each do |title|
    Article.create!(:title => title, :content => "#{title} - это очень интересно!")
  end
end
