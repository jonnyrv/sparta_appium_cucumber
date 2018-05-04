
class MainPage

    attr_accessor :homepage_id

    def initialize(driver)
        @driver = driver
        @homepage_id = 'protect.budgetwatch:id/menu'
    end

    def check_homepage_displayed?
        @driver.find_element(:id, @homepage_id)
    end

end