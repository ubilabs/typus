class Asset < ActiveRecord::Base

  belongs_to :resource, :polymorphic => true

  image_accessor :file
  image_accessor :required_file

  validates_presence_of :required_file

  # Paperclip Attachment
  has_attached_file :paperclip, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
