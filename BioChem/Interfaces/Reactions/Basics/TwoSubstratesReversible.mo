within BioChem.Interfaces.Reactions.Basics;

partial model TwoSubstratesReversible
  extends BioChem.Icons.Interfaces.Reactions.Basics.TwoSubstratesReversible;
  BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(
    Placement(transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, 50}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(
    Placement(transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, -50}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
end TwoSubstratesReversible;
