#Toy store, with a stuffed animal room, board game room, and plastic toy room. The stuffed animal room should show the types of animals, animal names, and the quantity. They board games should show the board game type, board game name, and quantity.

toy_store = {
  stuffed_animals: {
    room_name: "Jungle Kingdom",
    animals: {
      tiger: 6,
      monkey: 3,
      snake: 8
      },
    brands: [
      "TY",
      "Gund",
      "Animal Alley"
    ]
  },

  board_games: {
    room_name: "Game Room",
    games: {
      boggle: 2,
      risk: 5,
      yahtzee: 9
      },
    brands: [
      "AEG",
      "G3",
      "Mayfair Games"
      ]
  },


  books: {
    room_name: "Reading Room",
    books: {
      giving_tree: 3,
      animorphs: 9,
      goosebumps: 8
      },
    brands: [
      "Penguin",
      "Capstone",
      "August House"
    ]
  }
}

p toy_store