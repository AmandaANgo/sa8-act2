
# SA 8 - ACT 2 - Q3 - Custom Setter with Validation

class User

    attr_reader :username
  
    def initialize(username)
      @username = username
    end
  
    def username=(username)
      # username.to_s.strip.empty? = returns true if the username is either nil, an empty string, or contains only whitespace characters. 
      raise ArgumentError, "Username cannot be empty or nil" if username.to_s.strip.empty?
      @username = username
    end
  end
  
  user = User.new("Amanda")
  puts user.username
  
  user.username = "ManakaLala"
  puts user.username