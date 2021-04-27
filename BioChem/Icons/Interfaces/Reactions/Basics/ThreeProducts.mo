within BioChem.Icons.Interfaces.Reactions.Basics;

partial model ThreeProducts "SubstanceConnectors for three products"
  annotation(
    Icon(graphics = {Line(points = {{50, 0}, {100, 0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35), Line(points = {{50, 0}, {62.5, 75}, {100, 75}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier), Line(points = {{50, 0}, {62.5, -75}, {100, -75}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 35, smooth = Smooth.Bezier)}));
end ThreeProducts;
