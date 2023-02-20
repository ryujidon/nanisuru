class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'スポーツ' },
    { id: 3, name: '飲食' },
    { id: 4, name: '芸術' },
    { id: 5, name: '勉強' },
    { id: 6, name: 'ゲーム' },
    { id: 7, name: 'その他' },
  ]
  include ActiveHash::Associations
  has_many :schedules
end