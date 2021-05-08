within BioChem.Interfaces.Nodes;

connector ActivatorConnector "Connector between activators and reactions"
  extends BioChem.Icons.Interfaces.Nodes.ActivatorConnector;
  extends ChemicalPort;
  input BioChem.Units.Volume V;
end ActivatorConnector;
