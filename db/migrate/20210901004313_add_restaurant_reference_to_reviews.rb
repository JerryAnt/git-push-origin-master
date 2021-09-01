class AddRestaurantReferenceToReviews < ActiveRecord::Migration[6.1]
  def change
      # to one restaurant
      add_reference :reviews, :restaurant, foreign_key: true
  end
end
