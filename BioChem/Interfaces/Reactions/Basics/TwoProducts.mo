within BioChem.Interfaces.Reactions.Basics;

partial model TwoProducts "SubstanceConnectors for two products"
  extends BioChem.Icons.Interfaces.Reactions.Basics.TwoProducts;
  BioChem.Interfaces.Nodes.ProductConnector p2 annotation(
    Placement(transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -50}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p1 annotation(
    Placement(transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, 50}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
end TwoProducts;
