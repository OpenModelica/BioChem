within BioChem.Interfaces.Reactions.Basics;

partial model ThreeProducts "SubstanceConnectors for three products"
  extends BioChem.Icons.Interfaces.Reactions.Basics.ThreeProducts;
  BioChem.Interfaces.Nodes.ProductConnector p1 annotation(
    Placement(transformation(origin = {100, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, 75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p3 annotation(
    Placement(transformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p2 annotation(
    Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -2.9976e-15}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
end ThreeProducts;
