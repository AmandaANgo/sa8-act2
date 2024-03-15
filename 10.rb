# SA 8 - ACT 2 - Q10 - Metaprogramming with define_method for a Quiz Class
# Metaprogramming = the writing of computer programs that manipulate or generate other programs as their data.

class Quiz
    def initialize
      @questions = {}
    end
  
    def add_question(name, text)
      @questions[name] = text
    end
  
    # metaprogramming
    def define_question_methods
      @questions.each do |name, text|
        self.class.send(:define_method, name) do
          puts "Your question is: #{text}"
        end
      end
    end
  end
  
  # new instance
  quiz = Quiz.new
  
  quiz.add_question(:question_about_math, "What's 9 + 10?")
  quiz.add_question(:question_about_history, "How many states are in The United States of America?")
  
  quiz.define_question_methods
  
  quiz.question_about_math
  quiz.question_about_history