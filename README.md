# Tic Tac Toe - Ruby OOP


## Game Rules
- Each player is going to choose a number out of 9 positions.
- Fisrt player should enter his name and press enter.
- Second player should enter his name and press enter.
- Fisrt player should enter his symbol [X or O] and press enter.
- To choose a position you have to type the corresponding number and press enter.
- The game will check if the chosen number is valid or not valid.
- If it's not valid (i.e already taken number or not of the game positions - from 1 to 9 ) it will ask for another input.
- If it's valid it will display the board with the chosen position replaced by the symbol of the player [X, O].
- Then it will ask the next player to take turn.
- It will repeate the same for the second player.
- The game contiues till it reaches either winning or draw conditions.

### Winning conditions
We have 8 winning conditions...
- First three, to have occupied a full row with the same symbol [X, O]
- Second three, to have occupied a column with same symbol [X, O]
- third two, to have occupied a full diagonal with same symbol [X, O]

### Draw condition
- If 9 movements achieved with no winning then the game is a draw.


## Built With

- Ruby


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Text Editor (VSCode is suggested.)
- [Ruby](https://ruby-doc.org/downloads/)

### Setup

- Install [git](https://git-scm.com/downloads)
- Open Terminal
- Change directory to folder to download repository
- Use `cd <file-path>`
- Run `git clone https://github.com/Nasa28/Tic-Tac-Toe-.git`
- Install [Ruby](https://ruby-doc.org/downloads/)
- Run `ruby main.rb`


#### Testing
- Install `gem install rspec`
- Initialize `rspec --init`
- Run `rspec`


## Authors

👤 **Mohamed Atef**

- Github: [@Atef](https://github.com/Mohamed-js)
- Twitter: [@Mohamed-Atef](https://twitter.com/Demovejetta)
- Linkedin: [Atef](https://www.linkedin.com/in/mohamed-atef-032b6b1b0/)

👤 **Kalu Chinasa**

- Github: [@Chinasa](https://github.com/Nasa28)
- Twitter: [@Kalu-Chinasa](https://twitter.com/Ultimate_Nasa)
- Linkedin: [Chinasa](https://www.linkedin.com/in/kalu-chinasa-agu-a15080103/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome! Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development branch of the original project for a review


## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project originally taken from The Odin Project
- Project inspired by Microverse Program


## 📝 License

This project is [MIT](LICENSE) licensed.

