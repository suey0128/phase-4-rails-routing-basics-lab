class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        student_ordered_by_grade = Student.all.order(grade: :desc)
        render json: student_ordered_by_grade
    end

    def highest_grade
        student_with_highest_grade = Student.all.order(grade: :desc).first
        render json: student_with_highest_grade
    end
end
