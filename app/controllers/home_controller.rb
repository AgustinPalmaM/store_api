class HomeController < ApplicationController
  def greeting
    render json: {greetings: I18n.t(:hello)}
  end
end
