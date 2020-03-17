Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
  # この１行を追加することで、index,show,new,create,edit,update,destroyまでの7つのルーテングが、作成される。
  # 定義したルーティングは、$rails routesで確認できる
end
