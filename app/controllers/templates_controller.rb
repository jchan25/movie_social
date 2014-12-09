class TemplatesController < ApplicationController
  def index
    @templates = Template.all
  end

  def show
    @template = Template.find(params[:id])
  end

  def new
    @template = Template.new
  end

  def create
    @template = Template.new
    @template.source = params[:source]

    if @template.save
      redirect_to "/templates", :notice => "Template created successfully."
    else
      render 'new'
    end
  end

  def edit
    @template = Template.find(params[:id])
  end

  def update
    @template = Template.find(params[:id])

    @template.source = params[:source]

    if @template.save
      redirect_to "/templates", :notice => "Template updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @template = Template.find(params[:id])

    @template.destroy

    redirect_to "/templates", :notice => "Template deleted."
  end
end
