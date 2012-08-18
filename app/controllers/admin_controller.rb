class AdminController < ApplicationController

	def index
		@projects = Project.all
	end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
    #3.times { @project.images.build }
  end

  	# POST /projects
  	# POST /projects.json
  	def create
    	@project = Project.new(params[:project])
      @project.date_added = Time.now.year 
    	respond_to do |format|
      		if project = @project.save
        		format.html { redirect_to admin_path, notice: 'Project was successfully updated.' }
        		format.json { render json: @project, status: :created, location: @project }
      		else
        		format.html { render action: "new" }
        		format.json { render json: @project.errors, status: :unprocessable_entity }
      		end
    	end
  	end

    # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to admin_path, notice: 'Project was successfully updated.' }
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

  def images
    @images = Image.where(:project_id => params[:project_id])
    @image  = Image.new
    @image.project_id = params[:project_id]
  end

  def create_image
    @image = Image.new(params[:image])
    if @image.save
      redirect_to images_path(:project_id => params[:project_id])
    else
      redirect_to images_path(:project_id => params[:project_id])
    end

  end

end
