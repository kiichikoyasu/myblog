class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false     # ユーザ名
      t.string :email, null: false         # メールアドレス
      t.date :birthday                     # 生年月日
      t.integer :gender, null: false, default: 0
                                           # 性別（0:男, 1:女）
      t.boolean :administrator, null: false, default: false
                                           # 管理者フラグ

      t.timestamps
    end
  end
end
