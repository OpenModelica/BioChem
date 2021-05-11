within BioChem.Interfaces.Nodes;

connector ProductConnector "Connector between substances and reactions (product side of reaction)"
  extends BioChem.Icons.Interfaces.Nodes.ProductConnector;
  extends ChemicalPort;
  input BioChem.Units.Volume V;
end ProductConnector;
