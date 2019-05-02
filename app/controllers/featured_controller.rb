class FeaturedController < ApplicationController
  def index
	@project_sponsors = ProjectSponsor.all
  end
end
