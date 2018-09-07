class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :abv
      t.string :malt_type
      t.string :description

      t.timestamps
    end
  end
end
