within BioChem.Interfaces.Reactions.Basics;

partial model MultipleProducts "SubstanceConnector for arbitrary number of products"
  extends BioChem.Icons.Interfaces.Reactions.Basics.MultipleProducts;
  parameter Integer dimP = 5 "number of products";
  BioChem.Interfaces.Nodes.ProductConnector p[dimP] annotation(
    Placement(transformation(origin = {80.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {112.5, 0.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
end MultipleProducts;

