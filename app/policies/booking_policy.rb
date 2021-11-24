class BookingPolicy < ApplicationPolicy

  def show?
    user_is_owner? || record.car.user_id == user
  end

  def update?
    user_is_owner?
  end

  def destory
    user_is_owner?
  end

  def create?
    @record.car.user != @user
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def user_is_owner?
    @record.user == @user
  end
end
