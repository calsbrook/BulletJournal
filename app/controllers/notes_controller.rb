class NotesController < ApplicationController
    def index
        @notes = current_user.notes
    end

    def show
        @note = Note.find(params[:id])
    end

    def new
        @note = Note.new
    end

    def create
        @note = Note.new(note_params)
        dt = params[:due_date]
        @note.due = Time.new(dt[:year], dt[:month], dt[:day])
        @note.user = current_user
        if @note.save
            redirect_to @note, notice: 'Note was successfully created.'
        else
            render :new
        end
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        flash[:notice] = "Note deleted"
        redirect_to notes_path
    end

    def edit
        @note = Note.find(params[:id])
    end

    def update
        @note = Note.find(params[:id])
        dt = params[:due_date]
        @note.due = Time.new(dt[:year], dt[:month], dt[:day])
        if @note.update_attributes(params.require(:note).permit(:handle, :content))
            redirect_to notes_path
        else
            render :edit
        end
    end

    def week
        @notes = current_user.notes
    end
    
    def month
        @notes = current_user.notes
    end

    private

    def note_params
        params.require(:note).permit(:content, :note_type)
    end
end
