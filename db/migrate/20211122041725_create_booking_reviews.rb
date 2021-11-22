class CreateBookingReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_reviews do |t|
      t.boolean :owner_review
      t.references :booking, null: false, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
