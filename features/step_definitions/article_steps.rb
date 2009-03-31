# encoding: utf-8


# Условия
Допустим /^в блоге есть статья, названная (.+)/ do |title|
  Article.create!(:title => title, :content => "#{title} - это очень интересно!")
end

Допустим /^в блоге есть статьи, названные (.+)/ do |titles|
  titles.split(', ').each do |title|
    Допустим "в блоге есть статья, названная #{title}"
  end
end

Допустим /^у статьи "([^\"]*)" нет комментариев$/ do |title|
  Article.find_by_title(title).comments.delete_all
end


# Проверки
То /^у статьи "([^\"]*)" должен быть ([0-9]+) комментарий$/ do |title, count|
  Article.find_by_title(title).should have(1).comment
end

