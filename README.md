# Project: Connect Four

https://www.theodinproject.com/lessons/ruby-connect-four

## Introduction

A good way to get familiar with and begin contributing to a new project is to write tests for it. It’s also the best way to become familiar with a new code base, something you’ll have to do when you start working. It’s pretty common for test code to ultimately take up twice as many lines of code as the actual project code!

You still may feel shaky on RSpec at this point (which is totally normal), so let’s go back in time and write tests for some of the code you’ve already done to build up a bit of muscle memory. If you’ve written a good batch, submit them below and we’ll include them as part of the original project description to help future students!

## Post-project Review

TDD is hard. Jumping back and forth between writing a test and then a snippet of code really breaks the flow of actually working on the project. This took a lot longer because I just couldn't keep up a good pace and dragged things along. Ultimately, I ended up cutting some corners just so I could get this project done.

I most likely need more time working with TDD to get a better feel for it, but at this point, I'd like to make at least a little more progress in the course.

On the bright side, I put the techniques from the Intermediate Git lessons to good use for this project. Those lessons were extremely helpful with getting to understand how git works a bit more.

---

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
