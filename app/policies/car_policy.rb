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

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner?
    @record.user == @user
  end
end
