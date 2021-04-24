within BioChem.Interfaces.Nodes;

connector InhibitorConnector "Connector between inhibitors and reactions"
  extends BioChem.Icons.Interfaces.Nodes.InhibitorConnector;
  BioChem.Units.Concentration c;
  flow BioChem.Units.MolarFlowRate r;
  input BioChem.Units.Volume V;
end InhibitorConnector;
