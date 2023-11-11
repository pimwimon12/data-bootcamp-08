RPS_game <- function() {
  print("Welcome to RPS Game. Let's play!")
  
  RPS <- c("rock","paper","scissors")
  
  count <- 0
  win <- 0
  draw<- 0
  lose <- 0
  
  while(TRUE) {
    com_input <- sample(RPS, 1)
    player_input <- readline("Input rock/paper/scissors or Input X for End Game: ")
    
    if (player_input == "X" | player_input == "x") {print("End Game")
      print(paste("You play ",count,"game"))
      print(paste("win: ",win))
      print(paste("Draw: ",draw))
      print(paste("Lose: ",lose)) 
      break}
    
    else if (player_input == com_input) {print(paste("You:",player_input,"| Computer:",com_input,"->","It's draw"))
      count = count+1
      draw = draw+1}
    else if (player_input == "rock" & com_input == "scissors") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Win"))
      count = count+1
      win = win+1}
    else if (player_input == "paper" & com_input == "rock") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Win"))
      count = count+1
      win = win+1}
    else if (player_input == "scissors" & com_input == "paper") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Win"))
      count = count+1
      win = win+1}
    else if (player_input == "rock" & com_input == "paper") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Lose"))
      count = count+1
      lose = lose+1}
    else if (player_input == "paper" & com_input == "scissors") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Lose"))
      count = count+1
      lose = lose+1}
    else if (player_input == "scissors" & com_input == "rock") {print(paste("You:",player_input,"| Computer:",com_input,"->","You Lose"))
      count = count+1
      lose = lose+1}
    else {print("Please input 'rock'/'paper'/'scissors' or 'X' only")}  
}}

RPS_game()
