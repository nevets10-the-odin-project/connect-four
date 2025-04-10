# Project: TDD Connect Four

https://www.theodinproject.com/lessons/ruby-connect-four

## Introduction

Hopefully most people will have played Connect Four at some point. It’s a basic game where each player takes turns dropping pieces into the cage. Players win if they manage to get 4 of their pieces consecutively in a row, column, or along a diagonal.

The game rules are fairly straightforward and you’ll be building it on the command line like you did with the other games. If you want to spice up your game pieces, look up the unicode miscellaneous symbols on Wikipedia. The Ruby part of this should be well within your capability by now so it shouldn’t tax you much to think about it.

The major difference here is that you’ll be doing this TDD-style. So figure out what needs to happen, write a (failing) test for it, then write the code to make that test pass, then see if there’s anything you can do to refactor your code and make it better.

Only write exactly enough code to make your test pass. Oftentimes, you’ll end up having to write two tests in order to make a method do anything useful. That’s okay here. It may feel a bit like overkill, but that’s the point of the exercise. Your thoughts will probably be something like “Okay, I need to make this thing happen. How do I test it? Okay, wrote the test, how do I code it into Ruby? Okay, wrote the Ruby, how can I make this better?” You’ll find yourself spending a fair bit of time Googling and trying to figure out exactly how to test a particular bit of functionality. That’s also okay… You’re really learning RSpec here, not Ruby, and it takes some getting used to.

## Brainstorming

Classes

    Game
        Variables
            players
            current player turn
            Board

        Methods
            initialize
                - self explanatory
            take_turn
                - handle actions to take the turn
            validate input
                - checks if the user input is valid
            game_over?
                - check if the game is over
                - a player wins or tie

    Board
        Variables
            board
                - Array of the slots that make up the board
        
        Methods
            update board
                - Updates the board

    Player
        Variables
            symbol
                - Holds the symbol for the player
                - Will be displayed on the board

## Rant

This will probably be painful at first. I need to do this TDD-style and the surprise assignment right before the actual project is a pretty jarring change in how the content is presented. It was a dense slog and really killed my momentum. It really needs to be moved into its own lesson and formatted to match the rest of the curriculum.
