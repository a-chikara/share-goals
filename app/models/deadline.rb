class Deadline < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1ヶ月以内' },
    { id: 3, name: '3ヶ月以内' },
    { id: 4, name: '6ヶ月以内' },
    { id: 5, name: '1年以内' },
    { id: 6, name: '3年以内' },
    { id: 7, name: '5年以内' },
    { id: 8, name: '10年以内' },
    { id: 9, name: '20年以内' },
    { id: 10, name: '30年以内' },
    { id: 11, name: '40年以内' },
    { id: 12, name: '50年以内' },
    { id: 13, name: '目標期日なし' },
  ]

  include ActiveHash::Associations
  has_many :posts

  end