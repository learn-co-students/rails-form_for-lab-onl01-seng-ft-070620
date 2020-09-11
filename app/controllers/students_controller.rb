class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to @student
    end

    def show
        student
    end

    def edit
        student
    end

    def update
        @student = Student.update(student_params)
        redirect_to @student
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def student
        @student = Student.find(params[:id])
    end
end
  