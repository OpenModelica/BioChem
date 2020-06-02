within BioChem.Interfaces.Reactions.Basics;

partial model ThreeProducts "SubstanceConnectors for three products"
  BioChem.Interfaces.Nodes.ProductConnector p1 annotation(
    Placement(transformation(origin = {100, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, 75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p3 annotation(
    Placement(transformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p2 annotation(
    Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -2.9976e-15}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{50, 0}, {100, 0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35), Line(points = {{50, 0}, {62.5, 75}, {100, 75}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier), Line(points = {{50, 0}, {62.5, -75}, {100, -75}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end ThreeProducts;
