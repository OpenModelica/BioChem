within BioChem.Interfaces.Nodes;

connector SubstrateConnector "Connector between substances and reactions (substrate side of reaction)"
  extends BioChem.Icons.Interfaces.Nodes.SubstrateConnector;
  BioChem.Units.Concentration c;
  flow BioChem.Units.MolarFlowRate r;
  input BioChem.Units.Volume V;
end SubstrateConnector;
