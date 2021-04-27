within BioChem.Interfaces.Reactions;

partial model Mmi "Multi-Multi irreversible reaction"
  extends BioChem.Icons.Interfaces.Reactions.Mmi;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
  extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
  BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
  BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products";
equation
  s.r = nS * rr;
  p.r = -nP * rr;
end Mmi;
