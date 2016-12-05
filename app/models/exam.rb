class Exam < ActiveRecord::Base
  belongs_to :year_group
   mount_uploader :image, EventImageUploader
   validates_presence_of :year_group_id
  def self.search(search)
    where("sub_name || grade LIKE ?" , "%#{search}%")
  end
end
