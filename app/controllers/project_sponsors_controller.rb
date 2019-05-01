class ProjectSponsorsController < ApplicationController
  before_action :set_project_sponsor, only: [:show, :edit, :update, :destroy]

  # GET /project_sponsors
  # GET /project_sponsors.json
  def index
    @project_sponsors = ProjectSponsor.all
  end

  
  
  # GET /project_sponsors/1
  # GET /project_sponsors/1.json
  def show
  end

  # GET /project_sponsors/new
  def new
    @project_sponsor = ProjectSponsor.new
  end

  # GET /project_sponsors/1/edit
  def edit
  end

  # POST /project_sponsors
  # POST /project_sponsors.json
  def create
    @project_sponsor = ProjectSponsor.new(project_sponsor_params)

    respond_to do |format|
      if @project_sponsor.save
        format.html { redirect_to @project_sponsor, notice: 'Project sponsor was successfully created.' }
        format.json { render :show, status: :created, location: @project_sponsor }
      else
        format.html { render :new }
        format.json { render json: @project_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_sponsors/1
  # PATCH/PUT /project_sponsors/1.json
  def update
    respond_to do |format|
      if @project_sponsor.update(project_sponsor_params)
        format.html { redirect_to @project_sponsor, notice: 'Project sponsor was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_sponsor }
      else
        format.html { render :edit }
        format.json { render json: @project_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_sponsors/1
  # DELETE /project_sponsors/1.json
  def destroy
    @project_sponsor.destroy
    respond_to do |format|
      format.html { redirect_to project_sponsors_url, notice: 'Project sponsor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_sponsor
      @project_sponsor = ProjectSponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_sponsor_params
      params.require(:project_sponsor).permit(:ProjectName, :ProjectDesc, :ProjectSponsorName, :ProjectSponsorLink, :ProjectScope, :feature)
    end
end
