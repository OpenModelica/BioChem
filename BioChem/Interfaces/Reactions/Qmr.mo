within BioChem.Interfaces.Reactions;

partial model Qmr "Quad-Multi reversible reaction"
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
  extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
  BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1";
  BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2";
  BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3";
  BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4";
  BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products";
equation
  s1.r = nS1 * rr;
  s2.r = nS2 * rr;
  s3.r = nS3 * rr;
  s4.r = nS4 * rr;
  p.r = -nP * rr;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Qmr;
