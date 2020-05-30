within BioChem.Reactions.MassAction.Irreversible.TriUni;

model Tuifi "Tri-uni irrerversible forward inhibition reaction"
  extends BioChem.Interfaces.Reactions.Tui;
  extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
  parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
equation
  rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  annotation(
    Documentation,
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Tuifi;
