class Deadline < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1週間' },
    { id: 3, name: '1ヶ月' },
    { id: 4, name: '3ヶ月' },
    { id: 5, name: '6ヶ月' },
    { id: 6, name: '1年' },
    { id: 7, name: '3年' },
    { id: 8, name: '5年' },
    { id: 9, name: '10年' },
    { id: 10, name: 'その他' },
  ]
  end