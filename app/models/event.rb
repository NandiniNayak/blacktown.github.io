class Event < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :image, EventImageUploader
  
  extend FriendlyId
  friendly_id :name, use: :slugged

  def self.search(search)
    where("name LIKE ?" , "%#{search}%")
  end
end
