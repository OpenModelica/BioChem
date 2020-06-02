within BioChem.Interfaces.Reactions.Basics;

partial model MultipleProducts "SubstanceConnector for arbitrary number of products"
  parameter Integer dimP = 5 "number of products";
  BioChem.Interfaces.Nodes.ProductConnector p[dimP] annotation(
    Placement(transformation(origin = {80.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {112.5, 0.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  annotation(
    Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
    Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{48.33, 0.0}, {98.33, 0.0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 50), Ellipse(origin = {112.5, -0.0}, lineColor = {170, 0, 0}, fillColor = {170, 0, 0}, extent = {{-20.0, -20.0}, {20.0, 20.0}})}));
end MultipleProducts;

