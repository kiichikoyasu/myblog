class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false         # タイトル
      t.string :body, null: false          # 本文

      t.timestamps
    end
  end
end
