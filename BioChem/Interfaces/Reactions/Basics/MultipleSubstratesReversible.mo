within BioChem.Interfaces.Reactions.Basics;

partial model MultipleSubstratesReversible "SubstanceConnector for arbitrary number of substrates"
  parameter Integer dimS = 5 "number of substrates";
  BioChem.Interfaces.Nodes.SubstrateConnector s[dimS] annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, -2.22045e-16}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  annotation(
    Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{-50.0, 0.0}, {-100.0, 0.0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 50), Ellipse(origin = {-112.5, 0.0}, fillColor = {255, 255, 255}, extent = {{-20.0, -20.0}, {20.0, 20.0}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end MultipleSubstratesReversible;
