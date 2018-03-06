class WelcomesController < ApplicationController

def index
  @selections = @selections.all.order(:title)
  @students = @students.all.order(:grad_year)
end
end
