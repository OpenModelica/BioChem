within BioChem.Interfaces.Nodes;

connector ModifierConnector "Connector between general modifieres and reactions"
  extends BioChem.Icons.Interfaces.Nodes.ModifierConnector;
  BioChem.Units.Concentration c;
  flow BioChem.Units.MolarFlowRate r;
  input BioChem.Units.Volume V;
end ModifierConnector;
