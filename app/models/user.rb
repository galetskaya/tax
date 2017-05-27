class User < ActiveRecord::Base
  has_many :cases, dependent: :destroy
  has_many :updates, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  validates :name, presence: true, allow_blank: false   
  def recent_updates
    updates.order(id: :desc).limit(20)
  end

  def recent_cases
    cases.order(id: :desc).limit(20)
  end   
end
