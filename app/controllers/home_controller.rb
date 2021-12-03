class HomeController < ApplicationController
  def index
    @test_calling_params = params[:nome]
  end
end
