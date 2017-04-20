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
      @square = @input**2
      render("/calculations/square_results.html.erb")
   end

   def flex_square_root
      #Parameters: {"num"=>"5"}
      @user_number = params["num"].to_f
      @root = Math.sqrt(@user_number).round(2)
      render("/calculations/flex_square_root.html.erb")
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



end
