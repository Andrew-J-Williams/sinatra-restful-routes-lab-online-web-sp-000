class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    @recipes = Recipe.all

    erb :index
  end

  get '/recipe/new' do
    erb :new
  end

  show '/recipes/:id' do
    @recipes = Recipe.find_by(params[:id])

    erb :show
  end

end
