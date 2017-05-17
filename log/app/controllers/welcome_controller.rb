class WelcomeController < ApplicationController
  layout false
  def index
  end
  def method_without_layout
    render layout: false
  end
end
