class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|

      t.string :text
      t.belongs_to :user, index: true
      t.belongs_to :track, index: true

      t.timestamps
    end
  end
end
