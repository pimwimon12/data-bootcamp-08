order_pizza <- function() {
  print("Welcome to my Pizza store")
  user_input1 <- readline("What you choose Hawaiian or Super Supreme?: ")
  user_input2 <- readline("What size of pizza do you want:    Small|Medium|Large? ")
  user_input3 <- readline("You want to thin or regular flour?: ")
  user_input4 <- readline("You want to add extra cheese? Yes or No: ")
  
    if (user_input1 == "Hawaiian" & user_input2 == "Small" & user_input4 == "Yes")
        {print("Your order is total 235 Baht")}
    else if (user_input1 == "Hawaiian" & user_input2 == "Small" & user_input4 == "No")
        {print("Your order is total 205 Baht")}
    else if (user_input1 == "Hawaiian" & user_input2 == "Medium" & user_input4 == "Yes")
        {print("Your order is total 410 Baht")}
    else if (user_input1 == "Hawaiian" & user_input2 == "Medium" & user_input4 == "No")
        {print("Your order is total 360 Baht")}
    else if (user_input1 == "Hawaiian" & user_input2 == "Large" & user_input4 == "Yes")
        {print("Your order is total 660 Baht")}
    else if (user_input1 == "Hawaiian" & user_input2 == "Large" & user_input4 == "No")
        {print("Your order is total 580 Baht")}
    else if (user_input1 == "Super Supreme" & user_input2 == "Small"& user_input4 == "Yes")
        {print("Your order is total 279 Baht")}
    else if (user_input1 == "Super Supreme" & user_input2 == "Small"& user_input4 == "No")
        {print("Your order is total 259 Baht")}
    else if (user_input1 == "Super Supreme" & user_input2 == "Medium" & user_input4 == "Yes")
        {print("Your order is total 409 Baht")}
    else if (user_input1 == "Super Supreme" & user_input2 == "Medium"& user_input4 == "No")
        {print("Your order is total 379 Baht")}
    else if (user_input1 == "Super Supreme" & user_input2 == "Large"& user_input4 == "Yes")
        {print("Your order is total 649 Baht")}
    else {print ("Your order is total 599 Baht")}
        print("Wait a minute. I'm preparing your order")
        print("-----------Thank You-------------")
}

order_pizza()
