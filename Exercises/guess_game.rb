class GuessGame
  GUESS = 8
  def initialize(player_name)
    @player_name  = player_name
    @number       = generate_number
    @attempts     = 1
    play
  end

  def try_to_guess
    puts "This is your attempt number #{@attempts}"
    puts "Please enter number:"
    @guess_number = gets.chomp.to_i
    @attempts += 1
  end

  def check_guess?
    @guess_number == @number
  end

  def check_if_less_or_greater
    @guess_number < @number ? puts("Bigger!") : puts("Smaller!")
  end

  def you_win
    puts "Congrats! #{@player_name} you won!!!"
    @attempts = 9
  end

  def exceded_attempts?
    @attempts >= GUESS
  end

  def generate_number
    rand(100)
  end

  def play
    begin
      try_to_guess
      check_guess? ? you_win : check_if_less_or_greater
    end while not exceded_attempts?
  end
end
