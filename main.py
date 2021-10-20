"""
Python Project
1- Open up the assistant
2-Ask for Log-in or Sign-up
3- If Sign-Up chosen , it will create an user in the database
4- If log-in chosen , it will identify the user and will start asking questions
5- Create notes, show notes and delete notes

"""

print("""
Available options:
    -login
    -signup
""")

option = input("What is your choice?")

if option == "signup":
    print("Okay, let´s get you signed up...")
    name = input("What's your name?: ")
    last_name = input("What's your last name?: ")
    email = input("Write your email: ")
    password = input("Select your password: ")
elif option == "login":
    print("Okay, confirm identity...")
    email = input("Write your email: ")
    password = input("Select your password: ")
