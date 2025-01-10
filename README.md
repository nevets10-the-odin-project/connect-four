# connect-four
[Project: Connect Four](https://www.theodinproject.com/lessons/ruby-connect-four)

---

# Brainstorming

Classes
    Game
        Variables
            players
            current player turn

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

---

# Rant

This will probably be painful at first. I need to do this TDD-style and the surprise assignment right before the actual project is a pretty jarring change in how the content is presented. It was a dense slog and really killed my momentum. It really needs to be moved into its own lesson and formatted to match the rest of the curriculum.