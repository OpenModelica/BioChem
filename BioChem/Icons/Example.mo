within BioChem.Icons;

partial package Example "Icon for an example model"
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {80, 50}}), Polygon(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100, 50}, {-80, 70}, {100, 70}, {80, 50}, {-100, 50}}), Polygon(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{100, 70}, {100, -80}, {80, -100}, {80, 50}, {100, 70}}), Text(fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-85, -85}, {65, 35}}, textString = "Example", fontName = "Arial"), Text(fillColor = {255, 0, 0}, extent = {{-120, 73}, {120, 132}}, textString = "%name", fontName = "Arial")}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
  Documentation(info = "<html><head></head><body><font size=\"5\">The implementation of this Icon looks nicer than the implementation of Modelica.Icoms.Example</font></body></html>"));
end Example;
