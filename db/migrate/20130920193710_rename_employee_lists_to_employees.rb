class RenameEmployeeListsToEmployees < ActiveRecord::Migration
  def change
    rename_table :employee_lists, :employees
  end
end
