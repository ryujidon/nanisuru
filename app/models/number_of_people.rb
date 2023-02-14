class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1人' },
    { id: 3, name: '2人' },
    { id: 4, name: '3〜4人' },
    { id: 5, name: '5人以上' },
    { id: 6, name: '大勢' },
    { id: 7, name: 'その他'},
  ]
  include ActiveHash::Associations
  has_many :schedules
end