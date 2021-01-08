class AddUserRefToReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :user, null: false, default: 1, foreign_key: true
  end
end
