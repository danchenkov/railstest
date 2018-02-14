class CreatePostsAndUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :content
      t.datetime :published_at

      t.timestamps
    end

    create_table :users do |t|
      t.string :name

      t.timestamps
    end

  end
end
