within BioChem.Reactions.MassAction.Irreversible.UniUni;

model Uui "Uni-uni irrerversible reaction"
  extends BioChem.Interfaces.Reactions.Uui;
  parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
equation
  rr = k1 * s1.c ^ nS1 * s1.V;
  annotation(
    Documentation,
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Uui;
