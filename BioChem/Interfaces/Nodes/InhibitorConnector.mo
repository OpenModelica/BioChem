within BioChem.Interfaces.Nodes;

connector InhibitorConnector "Connector between inhibitors and reactions"
  extends BioChem.Icons.Interfaces.Nodes.InhibitorConnector;
  extends ChemicalPort;
  input BioChem.Units.Volume V;
end InhibitorConnector;
