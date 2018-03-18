# Q0: Why is this error being thrown?
We don't have pokemon model for now.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
We have the model for Pokemons and the database to store the current possible Pokemons that'll appear.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
having a button with text "Throw a Pokeball!" showing on it and the class "button medium", after pushing it, it will sending the untrained pokemon id and route to the capture method in PokemonsController, do the things and patch(update) that specific pokemon in the database.

# Question 3: What would you name your own Pokemon?
"Kyra's (the original name of pokemon)"

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path
the path need the trainer ID, so in the views I have to pass that data as param[:id] and pass the pokemon data as param[:pokemon]

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
the place which shows the error (flash[:error]) will get the error message(if has) in the @pokemon variable after the model validates it.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
https://powerful-bastion-68522.herokuapp.com/
