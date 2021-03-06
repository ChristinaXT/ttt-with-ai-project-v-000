#!/usr/bin/env ruby
	

	require_relative '../config/environment'
	puts "Welcome to Tic Tac Toe!"
	

	def start
	  puts "How many players? (0, 1 or 2)"
	  input = gets.strip
	  case input
	    when "0"
	      Game.new(Player::Computer.new("X"), Player::Computer.new("O")).play
	      puts "That was fun! Would you like to play again?"
	      loop_around
	    when "1"
	      Game.new(Player::Human.new("X"), Player::Computer.new("O")).play
	      puts "That was fun! Would you like to play again?"
	      loop_around
	    when "2"
	      Game.new(Player::Human.new("X"), Player::Human.new("O")).play
	      puts "That was fun! Would you like to play again?"
	      loop_around
	    when "wargames"
	      Game.new(Player::Computer.new("X"), Player::Computer.new("O"), Board.new, true).wargames
	      puts "That was fun! Would you like to play again?"
	      loop_around
	    else
	      puts "That is an invalid entry"
	      start
	  end
	end
	def loop_around
	  puts "Please input y or n"
	  answer = gets.strip
	  case answer
	    when "y"
	      start
	    when "n"
	      puts "Goodbye!"
	    else
	      loop_around
	  end
	end
	start
