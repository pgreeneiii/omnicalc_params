Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Target 1 Flexible Routes
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_5"})

  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root"})

  get("/flexible/payment/:interest/:years/:principal", {:controller => "calculations", :action => "flex_payment"})

  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})

  #Target 2 Form Routes
  get("/square/new", {:controller => "forms", :action => "square_form"})

  get("/square/results", {:controller => "calculations", :action => "square_results"})

  get("/square_root/new", {:controller => "forms", :action => "square_root_form"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root_results"})

  get("/payment/new", {:controller => "forms", :action => "payment_form"})
  get("/payment/results", {:controller => "calculations", :action => "payment_results"})

  get("/random/new", {:controller => "forms", :action => "random_form"})
  get("/random/results", {:controller => "calculations", :action => "random_results"})

  #Target 3 Routes
  get("/word_count/new", {:controller => "forms", :action => "word_count_form"})
  get("/word_count/results", {:controller => "calculations", :action => "word_count_results"})

end
