from time import sleep
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

screenshot_list = []

def scroll_to(current_y:int, final_y: int, step: int, driver):
    scrnsht_index = 0
    while current_y < final_y:
        current_y += step
        driver.execute_script(f"window.scrollTo(0, {str(current_y)})")
        driver.save_screenshot(f"screenshot{str(scrnsht_index)}.png")
        screenshot_list.append(f"/app/screenshot{str(scrnsht_index)}.png")
        scrnsht_index += 1
        

options = Options()
options.add_argument("--headless")
options.add_argument("--width=1280")
options.add_argument("--height=1080")
driver = webdriver.Firefox(options=options)
driver.get("https://python.org")

sleep(5)

scroll_to(current_y=1080, final_y=1850, step=50, driver=driver)

driver.close()
driver.quit()

def create_gif():
    import glob
    from PIL import Image
    
    # filepaths
    fp_out = "/app/image.gif"
    
    img, *imgs = [Image.open(f) for f in screenshot_list]
    img.save(fp=fp_out, format='GIF', append_images=imgs,
             save_all=True, duration=400, loop=0)
    
create_gif()
