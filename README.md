# Key Value toy application

Interactive key-value demonstration using simple commands.

Application created to demonstrate sufficient coding and programming
aptitude and experience in using unit tests. Usage and examples of use
follow.

# Usage

Following instructions are assuming a Linux/Unix command line context
or similar setup.

1.  Download zip or clone git repository. Extract files from .zip if 
    applicable.

2.  Run interactive session using `ruby key-value.rb` 
2b. Alternatively, execute from the command line using `./key-value.rb`
    from inside the main application directory

3.  Run limited testing suite using `ruby tests/test_key_value.rb` from
    within the main application directory

# Example Executiuons

Examples included are run from a Linux/Unix command line context.

## Application Code

$ ruby key-value.rb
> put favorite_color blellow
ok
> put frog_color green
ok
> put sun_color yellow
ok
> put friends many
ok
> fetch friends
many
> fetch favorite_color
blellow
> exit
Bye!
$

## Testing Suite

$ ruby tests/test_key_value.rb
Loaded suite tests/test_key_value
Started
.....

Finished in 0.000891334 seconds.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
5 tests, 5 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
5609.57 tests/s, 5609.57 assertions/s

$