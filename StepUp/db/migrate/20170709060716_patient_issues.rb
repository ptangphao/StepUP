class PatientIssues < ActiveRecord::Migration[5.1]
  def change
  	create_table :patient_issues, :id => false do |t|
  		t.references :patient
  		t.references :issue
  	end
  end
end
