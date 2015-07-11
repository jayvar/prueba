class TagsController < ApplicationController
  def show
    # Get tag included in request
    @tag = params[:tag]
    # Get collection of products associated with given tag
    @carros = Carro.tagged_with(@tag, on: 'tags')
  end
end
