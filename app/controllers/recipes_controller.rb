class RecipesController < ApplicationController
  def index
    recipes = RecipePuppy
      .query_for_n_entries(n: 20,
        query: params[:query],
        ingredients: params[:ingredients])

    render :index, locals: { recipes: recipes }

    # @recipes = Recipe.all
    # if params[:search]
    #   @recipes = Recipe.search(params[:search])
    # else
    #   @recipes = Recipe.all
    # end
  end
end
