class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :ping_pong

  def ping_pong
    puts "Integer please: "
    user_num = Integer(gets.chomp)

    if user_num % 7 == 0
      puts "Ping"
    elsif user_num % 3 == 0
      puts "Pong"
    else user_num % 7 && user_num % 3 != 0
      puts "Neither Ping, nor Pong! Bada bing, bada boom! "
    end
  end
end
