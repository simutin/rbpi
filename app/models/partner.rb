class Partner < ActiveRecord::Base
  attr_accessible :link, :image, :position

  has_attached_file :image,
                    :styles => {
                      :thumb => "100x100>"
                    }

  validates_attachment_presence :image
  validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png']
  validates_attachment_size :image,:less_than => 5.megabytes
  default_scope order: 'partners.position ASC'

  acts_as_list
end
