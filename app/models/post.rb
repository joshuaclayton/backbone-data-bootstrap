class Post < ActiveRecord::Base
  belongs_to :user

  def self.chronological
    order('created_at desc')
  end
end
