class AddUserReferenceToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :flat_owner, foreign_key: { to_table: :users }
    add_reference :chatrooms, :pet_sitter, foreign_key: { to_table: :users }
  end
end
