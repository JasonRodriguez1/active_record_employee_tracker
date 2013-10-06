class CreateEmployeeList < ActiveRecord::Migration
  def change
    create_table :employee_lists do |t|
      t.column :employee, :string

      t.timestamps
    end
  end
end
