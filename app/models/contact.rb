class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :address
  has_many :phones

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  paginates_per 20

  validates :name, presence: true
  validates :email, presence: true
  validates :kind, presence: true
end
