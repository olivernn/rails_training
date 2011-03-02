class Post < ActiveRecord::Base
  has_many :comments
  scope :drafts, where(:published => false)
  scope :published, where(:published => true)
  validates_presence_of :title, :body
end