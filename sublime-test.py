import array
import random


class Queue:
    def __init__(self, size_max):
        assert size_max > 0
        self.max = size_max

    def empty(self):
