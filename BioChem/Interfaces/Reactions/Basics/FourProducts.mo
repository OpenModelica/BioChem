within BioChem.Interfaces.Reactions.Basics;

partial model FourProducts
  BioChem.Interfaces.Nodes.ProductConnector p4 annotation(
    Placement(transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -87.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p2 annotation(
    Placement(transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, -37.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p3 annotation(
    Placement(transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, 37.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.ProductConnector p1 annotation(
    Placement(transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112.5, 87.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{50, 0}, {62.5, 87.5}, {100, 87.5}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier), Line(points = {{50, 0}, {62.5, -87.5}, {100, -87.5}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier), Line(points = {{50, 0}, {62.5, 37.5}, {100, 37.5}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier), Line(points = {{50, 0}, {62.5, -37.5}, {100, -37.5}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end FourProducts;
