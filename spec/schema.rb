ActiveRecord::Schema.define do
  self.verbose = false

  create_table :authors, force: true do |t|
  end

  create_table :authors_posts, force: true do |t|
    t.integer :author_id
    t.integer :post_id
  end

  create_table :posts, force: true do |t|
  end
end
