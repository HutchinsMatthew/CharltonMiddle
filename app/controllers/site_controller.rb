class SiteController < ApplicationController
  def index
  end

  def show_users
    @users = User.all
    puts "\n\n\n\n"
    puts @users.length
    puts "\n\n\n\n"
  end

  def one_to_many

  end

  def many_to_many

  end
end
