within BioChem.Icons.Interfaces.Reactions.Basics;

partial model FastEquilibrium "Basics for a reaction edge"
  extends BioChem.Icons.Base;
  annotation(
    Icon(graphics = {Line(points = {{-50.0, 0.0}, {50.0, 0.0}}, color = {0, 0, 255}, pattern = LinePattern.DashDotDot, thickness = 2), Text(origin = {-0.0, 0.0}, fillColor = {77, 77, 77}, fillPattern = FillPattern.Solid, extent = {{-100.0, -150.0}, {97.9, -100.0}}, textString = "%name", fontName = "Arial")}));
end FastEquilibrium;
