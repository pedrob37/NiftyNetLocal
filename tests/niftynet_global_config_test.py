from unittest import TestCase
from niftynet.utilities.niftynet_global_config import NiftyNetGlobalConfig


class NiftyNetGlobalConfigTest(TestCase):
    """For reliably testing the global config file, the tests are grouped
    and ordered by including a number.

    https://docs.python.org/2/library/unittest.html says: "Note that the
    order in which the various test cases will be run is determined by
    sorting the test function names with respect to the built-in ordering
    for strings."
    """

    @classmethod
    def setUpClass(cls):
        # TODO
        pass

    @classmethod
    def tearDownClass(cls):
        # TODO
        pass

    def setUp(self):
        # TODO
        pass

    def tearDown(self):
        # TODO
        pass

    def test_000_global_config_singleton(self):
        global_config_1 = NiftyNetGlobalConfig()
        global_config_2 = NiftyNetGlobalConfig()
        self.assertEqual(global_config_1, global_config_2)
        self.assertTrue(global_config_1 is global_config_2)

    def test_010_non_existing_config_file_created(self):
        # TODO
        self.fail('not implemented')

    def test_011_existing_config_file_loaded(self):
        # TODO
        self.fail('not implemented')

    def test_012_incorrect_config_file_backed_up(self):
        # TODO
        self.fail('not implemented')
