within BioChem.Reactions.FastEquilibrium;

model Utf "Uni-Tri fast (instant) equilibrium reaction"
  extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
  extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
  parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for the substrate";
  parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
  parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
  parameter BioChem.Units.EquilibriumCoefficient kP3 = 1 "Equilibrium coefficient for product 3";
equation
  p1.c = s1.c * kP1 / kS1;
  p2.c = s1.c * kP2 / kS1;
  p3.c = s1.c * kP3 / kS1;
  s1.r + p1.r + p2.r + p3.r = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Utf;
