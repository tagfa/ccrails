Rails.application.routes.draw do
 #従来のメール訓練
  get 'login/2tyu9yrs3rop56' 

 #e-learning演習 
  get 'learningusers/entry'
  get 'learningusers/download' ,to: 'learningusers#download'

#クレジットカード演習 
 get  'members/signin',   to: 'members#signin'
 get  'members/new',      to: 'members#new'
 get  'members/index',    to: 'members#index'
 get  'members/complete', to: 'members#complete'
 get  'members/error',    to: 'members#error'
 get  'members',          to: 'members#index'
 post 'members',          to: 'members#create'


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
