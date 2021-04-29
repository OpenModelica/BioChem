within BioChem.Interfaces.Reactions.Basics;

partial model MultipleSubstratesReversible "SubstanceConnector for arbitrary number of substrates"
  extends BioChem.Icons.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
  parameter Integer dimS = 5 "number of substrates";
  BioChem.Interfaces.Nodes.SubstrateConnector s[dimS] annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, -2.22045e-16}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
end MultipleSubstratesReversible;
