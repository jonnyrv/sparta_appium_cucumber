
class BudgetAddPage

    attr_accessor :test_budget_name, :add_budgetwatch_button, :fill_budgetwatch_name , :fill_budgetwatch_value, :add_budget_btn, :get_budget_name, :name, :value 

    def initialize(driver)
        @driver = driver
        @test_budget_name = "Budgets"
        @add_budgetwatch_button = 'protect.budgetwatch:id/action_add'
        @fill_budgetwatch_name = 'protect.budgetwatch:id/budgetNameEdit'
        @fill_budgetwatch_value = 'protect.budgetwatch:id/valueEdit'
        @add_budget_btn = 'android.support.v7.widget.LinearLayoutCompat'
        @get_budget_name = 'protect.budgetwatch:id/budgetName'
        @name = 'Jonny'
        @value = '888'
    end

    def click_add_budget_button
        @driver.find_element(:id, @add_budgetwatch_button ).click
    end

    def fill_name(name)
        @driver.find_element(:id, @fill_budgetwatch_name ).send_keys(name)
    end

    def fill_value(value)
        @driver.find_element(:id, @fill_budgetwatch_value).send_keys(value)
    end

    def click_add_btn
        @driver.find_element(:class_name, @add_budget_btn ).click
    end

    def get_budget_name
        name = @driver.find_element(:id, @get_budget_name)
        name.text
    end

end