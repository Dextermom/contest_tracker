class EntriesController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create
  @selection = Selection.find(params[:selection_id])
  @selection.entries.create!
  redirect_to @selection, notice: "Student added"
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def entry_params

  end
  end
