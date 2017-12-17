# From this video here:
#    https://www.youtube.com/watch?v=4Nute1F5TZ4
#    @ 25:23 of 38:12 Zenmaster Avi teaches us about binding

# You can go into <<irb>> in bash & try this out.

a = "Hello"
b = "Another Variable"
c = "S.thing Esle"

the_current_universe = binding
#=> #<Binding:0x000000024baee0
the_current_universe.local_variables
#=> [:the_current_universe, :c, :b, :a, :_]
the_current_universe.local_variables_get("a") 
#=> "Hello"