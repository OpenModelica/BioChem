within BioChem.Interfaces.Reactions;

partial model Uti "Uni-Tri irreversible reaction"
  extends BioChem.Icons.Base;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
  extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
  BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate";
  BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1";
  BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2";
  BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3";
equation
  s1.r = nS1 * rr;
  p1.r = -nP1 * rr;
  p2.r = -nP2 * rr;
  p3.r = -nP3 * rr;
end Uti;
