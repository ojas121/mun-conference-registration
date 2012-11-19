authorization do
  
  role :"system admin" do
    has_permission_on [:conferences, :committees, :committee_schools, :countries, :country_lists, :country_schools, :delegates, :lists, :roles, :schools, :users, :user_roles], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  role :guest do
    has_permission_on [:conferences, :committee_schools], :to => [:index, :show]
  end

  role :"conference manager" do
    has_permission_on [:conferences, :committees, :committee_schools, :countries], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
end