class Article < ActiveRecord::Base
  validates_presence_of :title, :content

  def to_s
    title
  end
end
