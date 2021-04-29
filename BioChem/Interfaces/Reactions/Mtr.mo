within BioChem.Interfaces.Reactions;

partial model Mtr "Multi-Tri reversible reaction"
  extends BioChem.Icons.Base;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
  extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
  BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
  BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1";
  BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2";
  BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3";
equation
  s.r = nS * rr;
  p1.r = -nP1 * rr;
  p2.r = -nP2 * rr;
  p3.r = -nP3 * rr;
end Mtr;
