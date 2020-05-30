within BioChem.Reactions.MassAction.Reversible.UniTri;

model Utrfibabi "Uni-tri reversible forward inhibition, backward activation, backward inhibition reaction"
  extends BioChem.Interfaces.Reactions.Utr;
  extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
  extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
  extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
  parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
equation
  rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
  annotation(
    Documentation,
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Utrfibabi;
