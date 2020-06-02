within BioChem.Reactions.FastEquilibrium;

model Uuf "Uni-Uni fast (instant) equilibrium reaction"
  extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
  extends BioChem.Interfaces.Reactions.Basics.OneProduct;
  parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for the substrate";
  parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for the product";
equation
  p1.c = s1.c * kP1 / kS1;
  s1.r + p1.r = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Uuf;
