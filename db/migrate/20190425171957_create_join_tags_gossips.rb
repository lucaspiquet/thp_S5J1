class CreateJoinTagsGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :join_tags_gossips do |t|
      t.belongs_to :gossip, index: true
      t.belongs_to :tag, index: true
      t.timestamps
    end
  end
end
