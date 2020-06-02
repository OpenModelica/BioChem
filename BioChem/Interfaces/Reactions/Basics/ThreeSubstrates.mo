within BioChem.Interfaces.Reactions.Basics;

partial model ThreeSubstrates "SubstanceConnectors for three substrates"
  BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(
    Placement(transformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, 75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(
    Placement(transformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, -75}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-112.5, 4.44089e-16}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{-50, 0}, {-62.5, 75}, {-100, 75}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(points = {{-100, 0}, {-50, 0}}, color = {170, 0, 0}), Line(points = {{-100, -75}, {-62.5, -75}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end ThreeSubstrates;
