within BioChem.Icons.Interfaces.Reactions.Basics;

partial model MultipleSubstrates "SubstanceConnector for arbitrary number of substrates"
  extends BioChem.Icons.Base;
  annotation(
    Icon(graphics = {Line(points = {{-100, 0}, {-50, 0}}, color = {170, 0, 0}), Ellipse(lineColor = {170, 0, 0}, fillColor = {170, 0, 0}, extent = {{-131.2, -18.75}, {-93.75, 18.75}})}));
end MultipleSubstrates;
