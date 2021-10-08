log_file = open("um-server-01.txt") #This opens the file that we are going to be combing through and sets it equal to log_file


def sales_reports(log_file): #This defines the function sales_reports that takes in the parameter log_file
    for line in log_file: #This loops over the file, checking on every line
        line = line.rstrip() #This removes white space or spaces from the trailing side of the line.
        day = line[0:3] #This sets day = to the first 3 characters on the line
        if day == "Mon": #This runs an if statement to check if day = "Tue". We have now changed this script to display sales info for Monday
            print(line) #This console logs the line if the if statement on the previous line is true


#sales_reports(log_file) #This calls upon our previously defined sales_report function

def large_order(log_file):
    for line in log_file:
        line = line.rstrip()
        size = line[16:18]
        size = size.rstrip()
        size = int(size)
        if size > 10:
            print(line)


large_order(log_file)