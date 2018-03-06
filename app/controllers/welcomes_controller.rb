class WelcomesController < ApplicationController

def index
  @selections = Selection.all
  @students = Student.all
end
end
