class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @signins = SignIn.all
    @feedbacks = Feedback.all 
  end
end
