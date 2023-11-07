class Article < ApplicationRecord
  # 下記の記述でActiveHashとmodelをアソシエーションで結ぶ
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, :text,presence:true
# id1以外のときは保存できるバリデーション
# エラーメッセージを設定
  validates :genre_id,numericality:{other_than:1,message:"can't be blank"}
end
