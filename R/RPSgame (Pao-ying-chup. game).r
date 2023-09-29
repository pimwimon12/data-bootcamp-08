RPS_game <- function() {
  RPS <- c("rock","paper","scissors")
  
  count <- -1
  win <- 0
  draw<- 0
  lose <- 0
  
  while(TRUE) {
    com_input <- sample(RPS, 1)
    player_input <- readline("Input rock/paper/scissors or input X for end game")
    count = count+1
    
    if (player_input == "X") {print("End Game")
      print(paste("You play ",count,"game"))
      print(paste("win: ",win))
      print(paste("Draw: ",draw))
      print(paste("Lose: ",lose)) 
      break}
    
    else if (player_input == com_input) {print(paste("You:",player_input,"| Computer:",com_input,"->","It's draw"))
      draw = draw+1 }
    else if (player_input == "rock" & com_input == "scissors") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Win"))
      win = win+1}
    else if (player_input == "paper" & com_input == "rock") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Win"))
      win = win+1}
    else if (player_input == "scissors" & com_input == "paper") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Win"))
      win = win+1}
    else {print(paste("You:",player_input,"| Computer:",com_input,"->","You Lose"))
      lose = lose+1}  
}}

RPS_game()
