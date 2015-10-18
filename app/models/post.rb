class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments, dependent: :destroy

  def comments
    @comments = self.comments
  end
end
