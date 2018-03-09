class EntriesController < ApplicationController
  def index
    @entries = Entry.all.order(:name)

  end

  def show

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

  end

  def update

  end

  def destroy

  end

  private
  def entry_params
    params.require(:entry).permit(:name, :student_id, :selection_id, :year)
  end
  end
