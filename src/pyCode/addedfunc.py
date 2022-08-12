from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn

@library
class addedfunction:
    pl = None

    def __init__(self):
        self.pl = BuiltIn().get_library_instance("Browser")

    @keyword
    def double_click(self, element:str):
        self.pl.click()

