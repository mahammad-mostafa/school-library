require_relative 'app_class'

def main
  app = App.new
  app.welcome_message
  loop do
    app.display_options
    option = gets.chomp
    break if option == '7'

    puts ''
    app.handle_option(option)
  end
  app.close_messagge
end

main
