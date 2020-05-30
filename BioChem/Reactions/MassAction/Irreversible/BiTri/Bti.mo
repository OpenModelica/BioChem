within BioChem.Reactions.MassAction.Irreversible.BiTri;

model Bti "Bi-tri irrerversible reaction"
  extends BioChem.Interfaces.Reactions.Bti;
  parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
equation
  rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  annotation(
    Documentation,
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Bti;
