class Post < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :user

  def self.chronological
    order('created_at desc')
  end
end
