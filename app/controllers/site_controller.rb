class SiteController < ApplicationController
  def index
  end

  def show_users
    @users = User.all
  end

  def one_to_many
    @clubs = Club.all
    @events = Event.all
  end

  def many_to_many
    @students = Student.all
    @teachers = Teacher.all
  end
end
