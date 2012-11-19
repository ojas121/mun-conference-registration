class UsersController < ApplicationController
  
  def create

     respond_to do |format|
       if @user.save
         format.html { redirect_to @user, notice: 'User was successfully created.' }
         format.json { render json: @user, status: :created, location: @user }

         # Provide a email confirmation if all is good...
                    UserMailer.new_user_msg(@user).deliver

       else
         format.html { render action: "new" }
         format.json { render json: @user.errors, status: :unprocessable_entity }
       end
     end
   end
  
  
end
