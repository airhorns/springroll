Then(/^I should see the items table$/) do |expected_table|  
  html_table = table_at("#items").to_a  
  html_table.map! { |r| r.map! { |c| c.gsub(/<.+?>/, '') } }  
  expected_table.diff!(html_table)  
end