within BioChem.Interfaces.Nodes;

connector ActivatorConnector "Connector between activators and reactions"
  extends BioChem.Icons.Interfaces.Nodes.ActivatorConnector;
  BioChem.Units.Concentration c;
  flow BioChem.Units.MolarFlowRate r;
  input BioChem.Units.Volume V;
end ActivatorConnector;
