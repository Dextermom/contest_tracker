class EntriesController < ApplicationController
  def index
    @entries = Entry.all.order(:name)

  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
    @selection = Selection.all
    @student = Student.all
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path, notice: "Entry Added"
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:id])
    @selection = Selection.all
    @student = Student.all
  end

  def update
    @entry = Entry.find(params[:id])
      if @entry.update(entry_params)
        redirect_to @entry, notice: "Entry successfully updated!"
      else
        render :edit
      end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to root_url, alert: "Entry successfully deleted!"
  end

  private
  def entry_params
    params.require(:entry).permit(:name, :student_id, :selection_id, :year)
  end
  end
