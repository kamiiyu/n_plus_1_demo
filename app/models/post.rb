class Post < ApplicationRecord
  #has_many :comments, auto_include: false
  has_many :comments, fully_load: true
  has_one :latest_comment, -> { order(created_at: :desc) }, class_name: 'Comment', auto_include: false

  class << self
    def last_comments
      self.all.sum{|post| post.comments.last&.content}
    end
  end
end
