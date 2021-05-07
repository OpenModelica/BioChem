within BioChem.Interfaces.Nodes;

connector ModifierConnector "Connector between general modifieres and reactions"
  extends BioChem.Icons.Interfaces.Nodes.ModifierConnector;
  extends ChemicalPort;
  input BioChem.Units.Volume V;
end ModifierConnector;
