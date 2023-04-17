class EntriesController < ApplicationController
  def index
		@entries = Entry.all
  end

	def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to root_path, :flash => { :success => "Entry saved!" }
    else
      render :new, status: :unprocessable_entity
    end
  end

	def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to root_path, status: :see_other
  end

	private

	def entry_params
    params.require(:entry).permit(:kg)
	end
end
