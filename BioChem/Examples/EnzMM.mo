within BioChem.Examples;

model EnzMM "An enzymatic reaction with Michaelis-Menten kinetics"
  extends BioChem.Compartments.Compartment;
  Substances.Substance F6P(c.start = 2) "Fructose-6-phosphate" annotation(
    Placement(transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}})));
  Reactions.MichaelisMenten.Uur uur(vF = 1.5, KmS = 0.1, KmP = 0.05) annotation(
    Placement(transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}})));
  Substances.Substance G6P(c.start = 1) "Glucose-6-phosphate" annotation(
    Placement(transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(uur.p1, F6P.n1) annotation(
    Line(points = {{1.25, 10}, {10, 10}}));
  connect(G6P.n1, uur.s1) annotation(
    Line(points = {{-30, 10}, {-21.25, 10}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  annotation(
    Documentation(info = "<html>
<h1>EnzMM</h1>

 <p>
 An enzymatic reaction with Michaelis-Menten kinetics.
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Ellipse(fillColor = {170, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-100, -25}, {-50, 25}}), Ellipse(fillColor = {0, 85, 0}, fillPattern = FillPattern.Solid, extent = {{50, -25}, {100, 25}}), Line(points = {{-50, 0}, {50, 0}}, arrow = {Arrow.Open, Arrow.Open}, arrowSize = 30)}));
end EnzMM;
