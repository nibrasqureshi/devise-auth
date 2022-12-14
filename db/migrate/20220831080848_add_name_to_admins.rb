# frozen_string_literal: true

# adding attributes to admins table
class AddNameToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :first_name, :string
    add_column :admins, :last_name, :string
  end
end
