class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.references :post
      t.references :tag
      t.timestamps
    end
  end
end
