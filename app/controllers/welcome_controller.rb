class WelcomeController < ApplicationController
  def homepage
      @title = 'Internsquad';
      @content = 'Find or post internship oppurtunites.';
  end
end
