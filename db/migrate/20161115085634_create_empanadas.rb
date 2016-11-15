class CreateEmpanadas < ActiveRecord::Migration[5.0]
  def change
    create_table :empanadas do |t|
      t.integer :carne
      t.integer :pollo
      t.integer :total
      #t.integer :moncarne
      #t.integer :monpollo
      #t.integer :montotal

      t.timestamps
    end
  end
end
