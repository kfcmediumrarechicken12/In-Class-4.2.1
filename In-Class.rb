## In-class Challenge: Wrapping APIs
## For this challenge, pretend you have the following API:

## open_file(file_name) -> file_pointer
## read_data(file_pointer) -> data
## write_data(file_pointer, data)
## close_file(file_pointer)
## Wrap this up in a class in Ruby. (Since the API is fake, you won't be able to test.)

## What object should the class represent?
## What methods should exist in the class?
## What member variables should exist?

class FileWrapper
  def initialize(file_name)
    @file_name = file_name
    @file_pointer = open_file(file_name)
  end

  def read
    data = read_data(@file_pointer)
    if data == "ERROR"
        raise "Failed to read data"
    end
    data
  end

  def write(data)
    write_data(@file_pointer, data)
  end

  def close
    close_file(@file_pointer)
  end
end

file = File.,new("example.txt")
data = file.read
puts data
file.write("New data")
file.close()
