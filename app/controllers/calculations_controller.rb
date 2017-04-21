class CalculationsController < ApplicationController

   def flex_square_5
      #Parameters: {"num"=>"5"}
      @user_number = params["num"].to_f

      @square = @user_number**2
      render("/calculations/flex_square_5.html.erb")
   end

   def square_results
      #Parameters: {"user_number" => "66"}
      @input = params[:user_number].to_f
      @square = (@input**2).round(1)
      render("/calculations/square_results.html.erb")
   end

   def flex_square_root
      #Parameters: {"num"=>"5"}
      @user_number = params["num"].to_f
      @root = Math.sqrt(@user_number).round(2)
      render("/calculations/flex_square_root.html.erb")
   end

   def square_root_results
      #Parameters: {"user_num" = "10"}
      @user_number = params[:user_number].to_f
      @root = Math.sqrt(@user_number).round(1)
      render("/calculations/square_root_results.html.erb")
   end

   def flex_payment
      #Parameters: {"interest"=>"500", "years" = 30, principal = "250000"}
      @interest = params["interest"].to_f
      @years = params["years"].to_f
      @principal = params["principal"].to_f

      @apr = (@interest/100).round(2)
      monthly_interest = (@interest/100/12.0/100)
      months = (@years*12)

      @payment = ((@principal*monthly_interest)/(1-(1+monthly_interest)**(-months)))

      render("/calculations/flex_payment.html.erb")
   end

   def payment_results
      #Parameters: {"user_apr" = "5.50", "user_years" = "10", "user_principal" = "250000"}
      @interest = params[:user_apr].to_f
      @years = params[:user_years].to_f
      @principal = params[:user_principal].to_f

      monthly_interest = (@interest/12/100)
      months = (@years*12)

      @payment = ((@principal*monthly_interest)/(1-(1+monthly_interest)**(-months)))

      render("calculations/payment_results.html.erb")
   end

   def flex_random
      #Parameters: {"min" = "50", "max" = "100"}
      @min = params[:min].to_f
      @max = params[:max].to_f
      @random = Random.new.rand(@min..@max)

      render("/calculations/flex_random.html.erb")

   end

   def random_results
      #Parameters: {"user_min" = "50", "user_max" = "100"}
      @min = params[:user_min].to_f
      @max = params[:user_max].to_f
      @random = Random.new.rand(@min..@max)
      render("/calculations/random_results.html.erb")
   end

   def word_count_results
      #Parameters: {"user_text" = "full sentences", "special_word" = "word" }

      @text = params[:user_text]
      @special_word = params[:special_word]

      sentence = @text.downcase.split
      search_key = @special_word.downcase.split

      sentence_length = 0
      search_count = 0

      sentence.each do |word|
         sentence_length += word.length

         search_key.each do |key|
            #remove special characters and count search words
            if key == word.gsub(/[^a-z0-9\s]/i, "")
               search_count += 1
            end
         end
      end

      @word_count = @text.split.count

      @character_count_with_spaces = @text.length

      @character_count_without_spaces = sentence_length

      @occurrences = search_count
      render("/calculations/word_count_results.html.erb")
   end
end
