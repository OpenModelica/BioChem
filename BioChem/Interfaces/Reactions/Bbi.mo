within BioChem.Interfaces.Reactions;

partial model Bbi "Bi-Bi irreversible reaction"
  extends BioChem.Icons.Base;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
  extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
  BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1";
  BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2";
  BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1";
  BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2";
equation
  s1.r = nS1 * rr;
  s2.r = nS2 * rr;
  p1.r = -nP1 * rr;
  p2.r = -nP2 * rr;
end Bbi;
