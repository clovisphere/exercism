=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave
  def initialize(time)
    @minutes, @seconds = time.divmod(100)
  end

  def timer
    Time.at(@minutes * 60 + @seconds).strftime("%M:%S")
  end
end
