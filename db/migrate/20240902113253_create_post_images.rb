class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :animal_name
      t.text :caption
      t.text :user_id

      t.timestamps

    end
  end
end
