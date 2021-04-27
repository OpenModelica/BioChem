within BioChem.Interfaces.Reactions;

partial model Qur "Quad-Uni reversible reaction"
  extends BioChem.Icons.Interfaces.Reactions.Qur;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
  extends BioChem.Interfaces.Reactions.Basics.OneProduct;
  BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1";
  BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2";
  BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3";
  BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4";
  BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1";
equation
  s1.r = nS1 * rr;
  s2.r = nS2 * rr;
  s3.r = nS3 * rr;
  s4.r = nS4 * rr;
  p1.r = -nP1 * rr;
end Qur;
