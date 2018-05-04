
class BudgetPage

    attr_accessor :budgetwatch_menu_id, :budgetwatch_find_name
   

    def initialize(driver)
        @driver = driver
        @budgetwatch_menu_id = 'protect.budgetwatch:id/menu'
        @budgetwatch_find_name = 'android.widget.TextView'
    end

    def click_on_budget
        @driver.find_element(:id, @budgetwatch_menu_id ).click
    end

    def find_budget_name
        title = @driver.find_element(:class_name, @budgetwatch_find_name)
        title.text
    end
end