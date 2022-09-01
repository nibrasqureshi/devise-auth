class PostPolicy < ApplicationPolicy
		def create?
			user.present?
		end
		
		def update?
			user.present? 
		end
		
		def destroy?
			return true if user.present? && user.id == post.admin_id
		end

		private
	def post
		record
	end
end