#!/usr/bin/ruby -w

puts "Hello, Ruby!";

print <<EOF
	This is the first way of creating
	this is multiple document line
EOF

print <<`EOC`
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar" 
	I said foo
foo
	I said bar
bar

#ruby is weird language, but the creator is mad and smart enough to justify his action
=begin
this is 
multiple 
comment 
yo 
=end

puts "main ruby Program"

BEGIN{
	puts "Initializing Ruby Program"
}

END{
	puts "End of Ruby Program"
}

