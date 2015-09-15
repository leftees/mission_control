# Mission Control

Greetings, and welcome to Mission Control! You'll be pleasantly surprised to 
find that you can control robotic rovers across the flat, rectangular surface 
of Mars with text input. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mission_control'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mission_control

## Usage

Sending commands to Mission Control, and ultimately to your Martian rovers, is
accomplished by either providing a file, or providing input to the console
application:

    $ bin/mission_control your_input_file
    
Or:

    $ bin/mission_control < your_input_file

The first line of input is the upper-right coordinates of the plateau, the
lower-left coordinates are assumed to be 0,0.

The rest of the input is information pertaining to the rovers that have 
been deployed. Each rover has two lines of input. The first line gives the
rover's position, and the second line is a series of instructions telling
the rover how to explore the plateau.

The position is made up of two integers and a letter separated by spaces, 
corresponding to the x and y co-ordinates and the rover's orientation.

Each rover will be finished sequentially, which means that the second rover
won't start to move until the first one has finished moving. 

## Input and Output

Test Input:
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM

Expected Output:
1 3 N 
5 1 E

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ryancammer/mission_control.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

