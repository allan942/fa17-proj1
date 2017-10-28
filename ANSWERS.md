# Q0: Why is this error being thrown?

There's no Pokemon controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Pokemon from a list are being randomly selected to appear. All of them are around the same level.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

A medium sized button labeled "Throw a Pokeball" is created to direct to the capture method and update (patch) existing characteristics of the pokemon. Basically it's trainer is now you.

# Question 3: What would you name your own Pokemon?

Neo

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in a path so it is clear where to redirect to.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

It shows the correct error message corresponding to the validation being violated.

# Give us feedback on the project and decal below!

Fun project :)

# Extra credit: Link your Heroku deployed app
