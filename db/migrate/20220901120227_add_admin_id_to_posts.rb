# frozen_string_literal: true

# migration for admin id into posts
class AddAdminIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :admin, foreign_key: true
  end
end
