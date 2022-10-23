class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  has_scope :sort_by_name
  has_scope :sort_by_project_number
  has_scope :sort_by_city
  has_scope :sort_by_start_date
  has_scope :filter_by_field_value

  def index
    @projects = apply_scopes(Project).includes(:custom_fields).order(created_at: :DESC).paginate(pagination_params)
    render json: @projects, adapter: :json, each_serializer: ProjectSerializer, 
           meta: pagination_response(@projects), status: :ok
  end

  def show
    render json: @project
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(
        :name, 
        :project_number, 
        :city,
        :start_date,
        :end_date,
        :custom_fields_attributes => [:id, :column_type, :value, :name, :_destroy]
      )
    end
end
