##************************************************************************
## Script Name: App Instance for createTree(fileName) function
## Purpose:
##
##
## Created: 2021-01-18
## Authors:
##
## GitHub: marianafdz465
##
##
##************************************************************************

library(shiny)
library(OpenTree)
library(readr)

# UI ----------------------------------------------------------------------

ui <- htmlTemplate("www/OpenTree.html",
                   #text_input = textInput("fname","File name: ",value="OpenTree.csv"),
                   #verb_output = verbatimTextOutput("text"),
                   #btn1_checker = actionButton("chck1_file", "Check for file"),
                   #Data Table
                   #data_table = tableOutput("table1"),

                   # text output
                   text_output = tableOutput("table2")
)



# Server ------------------------------------------------------------------

server <-  function(input, output, session){

  #path_file <- file.path(wd, paste0(fileName, ".json"))

  #First Message
  message <- paste0("OpenTree Function test ")

  # send the message to the event handler with name handler1 if we press the action button
  session$sendCustomMessage("handler1", message)

  #jsonData <- read_file(dirname)
  jsonData <- "{\"id\":\"node1\",\"name\":\"root\",\"type\":\"decision\",\"probability\":\"\",\"variables\":\"\",\"payoff\":\"\",\"children\":[{\"id\":\"node1_1\",\"name\":\"Hola\",\"type\":\"chance\",\"probability\":\"\",\"variables\":\"\",\"payoff\":\"\",\"children\":[{\"id\":\"node1_1_1\",\"name\":\"node1_1_1\",\"type\":\"chance\",\"probability\":\"\",\"variables\":\"\",\"payoff\":\"\",\"children\":[{\"id\":\"node1_1_1_1\",\"name\":\"test\",\"type\":\"chance\",\"probability\":\"\",\"variables\":\"\",\"payoff\":\"\"},{\"id\":\"node1_1_1_2\",\"name\":\"node1_1_1_2\",\"type\":\"chance\",\"probability\":\"\",\"variables\":\"\",\"payoff\":\"\"}]},{\"id\":\"node1_1_2\",\"name\":\"node1_1_2\",\"type\":\"chance\",\"probability\":\"\",\"variables\":\"\",\"payoff\":\"\"}]},{\"id\":\"node1_2\",\"name\":\"node1_2\",\"type\":\"chance\",\"probability\":\"\",\"variables\":\"\",\"payoff\":\"\"}]}\r\n"
  session$sendCustomMessage("jsonData", jsonData)

  # This block fires each time we receive a message from JavaScript
  output$table2 <- renderTable({
    #Write json file
    json_value = input$jsonData
    write(json_value, dirname)
  })


}


# Run the application
shinyApp(ui , server)

