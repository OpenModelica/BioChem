within BioChem.Interfaces.Reactions.Basics;

partial model FourProducts
  extends BioChem.Icons.Interfaces.Reactions.Basics.FourProducts;
  BioChem.Interfaces.Nodes.ProductConnector p4 annotation(
    Placement(transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -87.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p2 annotation(
    Placement(transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -37.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p3 annotation(
    Placement(transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, 37.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p1 annotation(
    Placement(transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, 87.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
end FourProducts;
