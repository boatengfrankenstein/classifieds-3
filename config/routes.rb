Rails.application.routes.draw do

  root 'classified#index'
  get '/make-filter' => 'classified#make_filter'
  get '/get-filtered' => 'classified#get_filtered'
  
end
