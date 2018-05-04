
Given("I can open the app") do
    mainpage.check_homepage_displayed?
end
  
When("click on budget") do
    budgetpage.click_on_budget
end
  
Then("the budget page opens") do
    expect(budgetpage.find_budget_name).to eq budgetaddpage.test_budget_name
end
  
When("I enter a budget") do
    budgetpage.click_on_budget
    budgetaddpage.click_add_budget_button
    budgetaddpage.fill_name(budgetaddpage.name)
    budgetaddpage.fill_value(budgetaddpage.value)
end
  
And("save the budget") do
    budgetaddpage.click_add_btn
end
  
Then("the budget is saved") do
    expect(budgetaddpage.get_budget_name).to eq budgetaddpage.name
end
  
And("can be seen on the homepage") do
    expect(budgetaddpage.get_budget_name).to eq 'Jonny'
end