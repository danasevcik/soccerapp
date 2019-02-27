class ChangeColumnInPlayers < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :decication, :dedication
  end
end
