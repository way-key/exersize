class Book < ApplicationRecord
	# validates :title, :body, presence: true
# 本のタイトル、本の感想を空白で投稿したらバリデーションチェックされること
# 本のタイトル、本の感想を空白で投稿したら投稿画面にエラーメッセージが表示されること ※エラーメッセージの日本語化はしない
end
