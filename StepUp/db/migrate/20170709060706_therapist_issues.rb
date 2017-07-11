class TherapistIssues < ActiveRecord::Migration[5.1]
  def change
  	create_table :therapist_issues, :id => false do |t|
  		t.references :therapist
  		t.references :issue
  	end
  end
end
