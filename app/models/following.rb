# frozen_string_literal: true

class Following < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'
  validates :follower_id, presence: true
  validates :followed_id, presence: true

  def self.exists?(follower, followed)
    !find_by_follower_id_and_followed_id(follower, followed).nil?
  end
end
