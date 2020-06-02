within BioChem.Interfaces.Reactions.Basics;

partial model TwoSubstrates "SubstanceConnectors for two substrates"
  BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(
    Placement(transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, 50}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(
    Placement(transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, -50}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{-100, 50}, {-62.5, 50}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(points = {{-100, -50}, {-62.5, -50}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end TwoSubstrates;
