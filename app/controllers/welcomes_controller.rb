class WelcomesController < ApplicationController

  def index
    @selections = Selection.all.order(:title)
    @students = Student.all.order(:grad_year)
    @entries = Entry.all
  end
end
