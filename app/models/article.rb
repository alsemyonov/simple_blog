class Article < ActiveRecord::Base
  has_many :comments

  validates_presence_of :title, :content

  def to_s
    title
  end
end
