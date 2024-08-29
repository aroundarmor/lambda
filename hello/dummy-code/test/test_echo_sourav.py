import unittest
from echo_sourav import hello_sourav
from handler import lambda_handler

class TestEchoSourav(unittest.TestCase):

    def test_hello_sourav(self):
        self.assertEqual(hello_sourav(), "Hello Sourav")

    def test_lambda_handler(self):
        event = {}  # You can populate this with relevant test event data
        context = {}  # You can mock context if necessary
        response = lambda_handler(event, context)
        self.assertEqual(response['statusCode'], 200)
        self.assertEqual(response['body'], '"Hello Sourav"')

if __name__ == '__main__':
    unittest.main()