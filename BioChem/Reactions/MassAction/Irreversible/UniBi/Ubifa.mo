within BioChem.Reactions.MassAction.Irreversible.UniBi;

model Ubifa "Uni-bi irrerversible forward activation reaction"
  extends BioChem.Interfaces.Reactions.Ubi;
  extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
  parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
equation
  rr = k1 * aF1.c * s1.c ^ nS1 * s1.V;
  annotation(
    Documentation(info = "<html>
<ul>
<li>Main Author 2007-2008: Jan Brug&aring;rd, MathCore Engineering AB</li>
<li>Main Author 2006: Erik Ulfhielm</li>
<li>Main Author 2004-2005: Emma Larsdotter Nilsson</li>
</ul>
</html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Ubifa;
