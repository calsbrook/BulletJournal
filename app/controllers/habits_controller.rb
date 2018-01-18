class HabitsController < ApplicationController
    def index
        @habits = current_user.habits
    end

    def show
        @habit = Habit.find(params[:id])
    end

    def new
        @habit = Habit.new
    end

    def create
        @habit = Habit.new
        @habit.user = current_user
        @habit.name = params[:name]
        @habit.color = params[:colors]
        if @habit.save
            redirect_to @habit, notice: 'habit was successfully created.'
        else
            render :new
        end
    end

    def destroy
        @habit = Habit.find(params[:id])
        @habit.destroy
        flash[:notice] = "habit deleted"
        redirect_to habits_path
    end

    def edit
        @habit = Habit.find(params[:id])
    end

    def update
        @habit = Habit.find(params[:id])
        @habit.name = params[:name]
        @habit.dates = params[:day_complete]
        if @habit.update_attributes(habit_params)
            redirect_to habits_path
        else
            render :edit
        end
    end

    def week
        @habits = current_user.habits
    end
    
    def month
        @habits = current_user.habits
    end

    private

    def habit_params
        params.require(:habit).permit(:name, :color)
    end
end
