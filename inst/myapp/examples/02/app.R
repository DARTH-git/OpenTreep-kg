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
library(jsonlite)
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
  #message <- paste0("OpenTree Open ", path_file)

  # send the message to the event handler with name handler1 if we press the action button
  #session$sendCustomMessage("handler1", message)

  # This block fires each time we receive a message from JavaScript
  jsonData <- read_file(dirname)
  session$sendCustomMessage("jsonData", jsonData)

  output$table2 <- renderTable({
    #Write json file
    json_value = input$jsonData
    write(json_value, dirname)
  })


}


# Run the application
shinyApp(ui , server)

