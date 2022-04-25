"""
xxx class.
"""


# importing libraries

class CamelCase(): #you can make it based on a function
    """
    CamelCase class based on ...
    """
    def __init__(self): #if based on a function pass arguments after self, ...
        """
        Constructor.
        """
        # creating a super class to use from settins.yaml
        super().__init__() #pass all arguements and create from settings (its not neccesary to do it like this [settings][OBJECT][...] just settings[...])

        # attributes for functions
        self.... =


    def name(self):
        '''
        commets
        '''
        self ... =



    @property # dont know what a property is ...
    def name(self):
        '''
        comments

        Returns
        -------
        boolean / string /float /int etc.
        '''
        if self.pos[1] < -1 or self.pos[1] > 1.1:
            return False
        else:
            return True


