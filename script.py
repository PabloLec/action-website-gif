from selenium import webdriver

driver = webdriver.Firefox()
driver.get("https://python.org")

driver.save_screenshot("screenshot.png")

driver.close()
