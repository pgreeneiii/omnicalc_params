class FormsController < ApplicationController

   def square_new
      render("/forms/square_form.html.erb")
   end

   def square_root_new
      render("/forms/square_root_form.html.erb")
   end

   def payment_new
      render("/forms/payment_form.html.erb")
   end

   def random_new
      render("/forms/random_form.html.erb")
   end

   def word_count_form
      render("/forms/word_count_form.html.erb")
   end
end
