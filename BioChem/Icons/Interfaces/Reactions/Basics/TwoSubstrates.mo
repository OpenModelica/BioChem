within BioChem.Icons.Interfaces.Reactions.Basics;

partial model TwoSubstrates "SubstanceConnectors for two substrates"
  extends BioChem.Icons.Base;
  annotation(
    Icon(graphics = {Line(points = {{-100, 50}, {-62.5, 50}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(points = {{-100, -50}, {-62.5, -50}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier)}));
end TwoSubstrates;
