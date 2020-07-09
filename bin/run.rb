require_relative '../config/environment'
ActiveRecord::Base.logger = nil
# names
# House Rule 
  
 
# main menu: what would you like to do? (whos turn is it?)

#     my reviews
#         (Review.all == self)
#         new options:
#             write a review of a game (should this be in main menu?)
#                 Review.new
#             delete a review of a game
#                 Review.x.delete
#             edit? a review of a game
#                 Review.x.edit
#             delete all games :O
#                 Review.all.player_id == self delete
#                 puts "cleared the board"
#             back to main menu
#                 cd . main menu (idk how to do that)

#     my games
#         (Review.all==self : game name )
#         new options:
#             write a review of a game (should this be in main menu?)
#                 Review.new
#             delete a review of a game
#                 Review.x.delete
#             edit? a review of a game
#                 Review.x.edit
#             delete all games :O
#                 Review.all.player_id == self delete
#                 puts "cleared the board"
#             back to main menu
#                 cd . main menu (idk how to do that)

#     write a review
#         Review.new
#         back to main menu

#     top 3 games
#         Game.top_three_games
#         automatically puts you back in main menu?
#                 should we pick either top 3 or top game? maybe we can put top game on the welcome screen?

#     top game
#         Game.top_three_games
#         automatically puts you back in main menu?

#     random game
#         Game.random_game
#         automatically puts you back in main menu?
        
#     '
game_intro()
# player_info()
main_menu()    

puts "HELLO WORLD"
