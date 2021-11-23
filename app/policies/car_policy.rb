class CarPolicy < ApplicationPolicy
  def new?
    true
  end

  def show?
    true
  end

  def update?
    user_is_owner?
  end

  def create?
    user_is_owner?
  end

  class Scope < Scope
    def resolve
<<<<<<< HEAD
      scope.where(user: user)
=======
      scope.all
>>>>>>> f2047a1d822a0f4dfd4d805fb5140226c83c6f5b
    end
  end

  private

  def user_is_owner?
    @record.user == @user
  end
end
