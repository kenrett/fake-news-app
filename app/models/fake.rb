class Fake < ApplicationRecord
	belongs_to :creator, class_name: :User

	validates :creator_id, :source, presence: true

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
                    :storage => :s3,
                    :s3_region => Rails.application.secrets[:region],
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def s3_credentials
    {bucket: Rails.application.secrets[:bucket], 
    access_key_id: Rails.application.secrets[:access_key_id], 
    secret_access_key: Rails.application.secrets[:secret_access_key]}
  end
end
