within BioChem.Interfaces.Reactions.Basics;

partial model ThreeSubstrates "SubstanceConnectors for three substrates"
  extends BioChem.Icons.Interfaces.Reactions.Basics.ThreeSubstrates;
  BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(
    Placement(transformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, 75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(
    Placement(transformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, -75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, 4.44089e-16}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
end ThreeSubstrates;
