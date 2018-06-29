class CreateTagClips < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_clips do |t|
    t.references :clip, null: false, foreign_key: true, index: true
    t.references :user, null: false, foreign_key: true, index: true
    t.references :tag, null: false, foreign_key: true, index: true
    t.timestamps
    end
  end
end
