class Schedule < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :people
  belongs_to :budget
  has_one_attached :image



  validates :title,             presence: true
  validates :detail,             presence: true
  validates :category_id,       numericality: { other_than: 1 , message: "を選択してください"} 
  validates :people_id,     numericality: { other_than: 1 , message: "を選択してください"} 
  validates :budget_id,          numericality: { other_than: 1 , message: "を選択してください"} 
  validates :image,              presence: true  


  def self.search(search)
    if search != ""
      Schedule.where('text LIKE(?)', "%#{search}%")
    else
      Schedule.all
    end
  end

end
