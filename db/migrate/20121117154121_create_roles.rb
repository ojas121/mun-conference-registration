class CreateRoles < ActiveRecord::Migration
	def self.up
		create_table :roles do |t|
			t.column :name, :string
		end

		Role.reset_column_information

		Role.create( :name => 'System Admin' )
		Role.create( :name => 'Conference Manager' )
		Role.create( :name => 'MUN Director' )

	end

	def self.down
		drop_table :roles
	end
 end
