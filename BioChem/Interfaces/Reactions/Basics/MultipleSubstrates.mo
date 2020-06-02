within BioChem.Interfaces.Reactions.Basics;

partial model MultipleSubstrates "SubstanceConnector for arbitrary number of substrates"
  parameter Integer dimS = 5 "number of substrates";
  BioChem.Interfaces.Nodes.SubstrateConnector s[dimS] annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, -2.22045e-16}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  annotation(
    Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{-100, 0}, {-50, 0}}, color = {170, 0, 0}), Ellipse(lineColor = {170, 0, 0}, fillColor = {170, 0, 0}, extent = {{-131.2, -18.75}, {-93.75, 18.75}})}));
end MultipleSubstrates;
