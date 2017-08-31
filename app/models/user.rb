class User < ApplicationRecord

  # ===== Constants ===============================================
  STAMP_WIDTH = 50
  STAMP_HEIGHT = 50
  THUMBNAIL_WIDTH = 200
  THUMBNAIL_HEIGHT = 200

  # ==== Validations ==============================================
  validates :first_name, :last_name, presence: true, length: 2..72

  # ==== Associations =============================================


  # ==== Devise settings ==========================================
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :trackable

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  # ==== Photofy ===================================================
  photofy(:profile_pic)
  after_photofy :profile_pic, :stamp, Proc.new { |img| img.resize_to_fill(STAMP_WIDTH, STAMP_HEIGHT) }

  def default_pic_path
    '/default_user_img.jpg'
  end

  def default_stamp_path
    '/default_stamp_user_img.jpg'
  end

  def profile_image
    profile_pic? ? profile_pic_path.gsub(Rails.root.to_s, '') : default_pic_path
  end

  def stamp_image
    self.stamp ? stamp_path.gsub(Rails.root.to_s, '') : default_stamp_path
  end

  def full_name
    [first_name, last_name].join(' ')
  end

end
