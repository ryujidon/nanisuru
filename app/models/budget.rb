class Budget < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '0円' },
    { id: 3, name: '1〜100円' },
    { id: 4, name: '101〜1000円' },
    { id: 5, name: '1001〜5000円' },
    { id: 6, name: '5001〜10000円' },
    { id: 7, name: '100001円以上' },
  ]
  include ActiveHash::Associations
  has_many :schedules
end