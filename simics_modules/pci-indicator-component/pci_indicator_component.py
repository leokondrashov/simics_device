import simics
from comp import *

class pci_indicator_card(StandardConnectorComponent):
    """A component containing PCI indicator device."""
    _class_desc = "PCI indicator card"
    _help_categories = ('PCI',)

    def setup(self):
        super().setup()
        if not self.instantiated.val:
            self.add_objects()
        self.add_connectors()

    def add_objects(self):
        sd = self.add_pre_obj('indicator', 'pci_indicator')

    def add_connectors(self):
        self.add_connector('pci_bus', PciBusUpConnector(0, 'indicator'))

    class basename(StandardComponent.basename):
        """The default name for the created component"""
        val = "pci_indicator_cmp"

    class component_connector(Interface):
        """Uses connector for handling connections between components."""
        def get_check_data(self, cnt):
            return []
        def get_connect_data(self, cnt):
            return [[[0, self._up.get_slot('indicator')]]]
        def check(self, cnt, attr):
            return True
        def connect(self, cnt, attr):
            self._up.get_slot('indicator').pci_bus = attr[1]
        def disconnect(self, cnt):
            self._up.get_slot('indicator').pci_bus = None
