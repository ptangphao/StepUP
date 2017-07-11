class RequestIssues < ActiveRecord::Migration[5.1]
  def change
  	create_table :request_issues, :id => false do |t|
  		t.references :request
  		t.references :issue
  	end
  end
end
