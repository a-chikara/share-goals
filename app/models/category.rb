class Category < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '旅行' },
    { id: 3, name: '美容' },
    { id: 4, name: '食べ物' },
    { id: 5, name: '欲しいもの' },
    { id: 6, name: 'アクティビティ' },
    { id: 7, name: 'ライフスタイル' },
    { id: 8, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :posts

end
