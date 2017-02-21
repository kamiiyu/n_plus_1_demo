class Post < ApplicationRecord
  has_many :comments

  class << self
    def last_comments
      self.all.sum{|post| [post.id, post.comments.last&.content]}
    end
  end
end
