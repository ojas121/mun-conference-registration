authorization do
  
  role :"system admin" do
    has_permission_on [:conferences, :committees, :committee_schools, :countries, :country_lists, :country_schools, :delegates, :lists, :roles, :schools, :users, :user_roles], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end


  role :"conference manager" do
    has_permission_on [ :committees, :committee_schools, :countries, :country_lists, :country_schools, :delegates, :lists, :schools ], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on [ :conferences], :to => [:index, :show]
  end


    role :"mun director" do 
	 has_permission_on [  :delegates, :schools ], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	 has_permission_on [ :conferences], :to => [:index, :show]
	 
  end




end