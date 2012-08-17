class ProjectsController < ApplicationController


  # GET /design
  def design
    @projects = Project.where(:is_featured => true,:project_type => 0)
    @project = @projects.first()
    respond_to do |format|
      format.html # design.html.erb
    end
  end
  
  # GET /illiustration
  def illiustration
    @projects = Project.where(:is_featured => true, :project_type => 1)
    @project = @projects.first()
    respond_to do |format|
      format.html # illiustration.html.erb
    end
  end
  
  # GET /miscellaneous
  def miscellaneous
    @projects = Project.where(:is_featured => true, :project_type => 2)
    @project = @projects.first()
    respond_to do |format|
      format.html # miscellaneous.html.erb
    end
  end
  
  # GET /published
  def published
    @projects = Project.where(:is_published => true)
    @project = @projects.first()
    respond_to do |format|
      format.html # published.html.erb
    end
  end
    # GET /attic
  def attic
    @projects = Project.all
    @project = @projects.first()
    respond_to do |format|
      format.html # attic.html.erb
    end
  end

  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end

end
