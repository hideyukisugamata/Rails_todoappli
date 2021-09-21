Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'todos#index'
get'/todo',to:'todos#index'
get'/todo/new',to:'todos#new'
post'/todo/create',to:'todos#create'
get'/todo/edit/:id',to: 'todos#edit',as: 'todo_edit'
patch'/todo/update/:id',to:'todos#update',as: 'todo_update'
delete'/todo/delete/:id',to:'todos#delete',as: 'todo_delete'

end
