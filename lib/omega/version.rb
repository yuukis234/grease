module Omega
  VERSION = "0.1.0"
  class Test end
end


=begin
備忘録用に残しておく
module Omega
  VERSION = "0.1.0"
  class User
  def initialize(name:, age:)
    @name = name
    @age = age
  end
  def greet
    if @age <= 12
      "ぼくは#{@name}だよ。"
    else
      "僕は#{@name}です。"
    end
  end
end
end

=end
