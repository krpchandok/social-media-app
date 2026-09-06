class Relationship < ApplicationRecord
  enum :status, { pending: 'pending', accepted: 'accepted' }

  belongs_to :follower
  belongs_to :followed
end
