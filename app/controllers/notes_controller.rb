class NotesController < ApplicationController
    def index
        @notes = Note.all
    end

    def show
        @note = Note.find(params[:id])
    end

    def new
        @note = Note.new
    end

    def create
        @note = Note.new(note_params)
    
        respond_to do |format|
          if @note.save
            format.html { redirect_to @note, notice: 'Note was successfully created.' }
            format.json { render :show, status: :created, location: @note }
          else
            format.html { render :new }
            format.json { render json: @note.errors, status: :unprocessable_entity }
          end
        end
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        flash[:notice] = "note deleted"
        redirect_to notes_path
    end

    def edit
        @note = Note.find(params[:id])
    end

    def update
        @note = Note.find(params[:id])

        if @note.update_attributes(params.require(:note).permit(:handle, :content))
            redirect_to notes_path
        else
            render :edit
        end
    end

    private
    
    def note_params
        params.require(:note).permit(:content, :types)
    end
end
