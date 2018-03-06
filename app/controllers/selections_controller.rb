class SelectionsController < ApplicationController

def index
  @selections = Selection.all.order(:title)

end

def show
@selection = Selection.find(params[:id])

end

def new
@selection = Selection.new
end

def create
@selection = Selection.new(selection_params)
if @selection.save
  redirect_to @selection
else
  render :new
end
end

def edit
@selection = Selection.find(params[:id])
end

def update
@selection = Selection.find(params[:id])
  if @selection.update(selection_params)
    redirect_to @selection, notice: "Selection successfully updated!"
  else
    render :edit
  end
end

def destroy
@selection = Selection.find(params[:id])
@selection.destroy
redirect_to root_url, alert: "Selection successfully deleted!"
end

private
def selection_params
  params.require(:selection).permit(:title, :composer, :publisher, :pml, :voicing, :notes)

end
end
