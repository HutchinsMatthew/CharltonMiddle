class StudentsTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :students_teachers, id: false do |t|
      t.belongs_to :student
      t.belongs_to :teacher
    end
  end
end
