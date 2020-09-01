class SchoolClassesController < ApplicationController

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(params_path)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params_path)
        redirect_to school_class_path(@school_class)
    end

    private

    def params_path
        params.require(:school_class).permit(:title, :room_number)
    end

end