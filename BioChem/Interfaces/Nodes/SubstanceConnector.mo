within BioChem.Interfaces.Nodes;

connector SubstanceConnector "Connector between substances and reactions"
  extends BioChem.Icons.Interfaces.Nodes.SubstanceConnector;
  extends ChemicalPort;
  output BioChem.Units.Volume V;
end SubstanceConnector;
