class WelcomeController < ApplicationController
  def homepage
      @project_sponsors = ProjectSponsor.all
      @title = 'Internsquad';
      @content = 'Find or post internship oppurtunites.';
  end
end
