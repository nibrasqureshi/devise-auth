# frozen_string_literal: true

class PostPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  def update?
    return true if user.present? && user.id == post.admin_id
  end

  def destroy?
    return true if user.present? && user.id == post.admin_id
  end

  private

  def post
    record
  end
end
