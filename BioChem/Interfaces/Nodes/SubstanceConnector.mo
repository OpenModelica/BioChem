within BioChem.Interfaces.Nodes;

connector SubstanceConnector "Connector between substances and reactions"
  extends BioChem.Icons.Interfaces.Nodes.SubstanceConnector;
  BioChem.Units.Concentration c;
  flow BioChem.Units.MolarFlowRate r;
  output BioChem.Units.Volume V;
end SubstanceConnector;
