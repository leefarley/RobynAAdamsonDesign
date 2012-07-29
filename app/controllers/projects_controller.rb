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

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
