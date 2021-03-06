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
    true
  end

  def listings?
    true
  end

  def destroy?
    user_is_owner?
  end

  class Scope < Scope
    def resolve
      scope.where.not(user: user)
    end
  end

  private

  def user_is_owner?
    @record.user == @user
  end
end
