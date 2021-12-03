class HomeController < ApplicationController
  def index
    @test_calling_params = params[:nome]
  end

  def test
    if params[:nome].blank?
      puts "ok"
    else
      puts "error"
    end
  end
end
