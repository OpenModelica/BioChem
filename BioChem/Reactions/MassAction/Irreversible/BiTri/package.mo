within BioChem.Reactions.MassAction.Irreversible;

package BiTri "A+B -> C+D+E reactions"
  extends BioChem.Icons.Library;

  model Btifi "Bi-tri irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bti;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Btifi;

  model Btifafi "Bi-tri irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bti;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Btifafi;

  model Btifa "Bi-tri irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Bti;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Btifa;

  model Bti "Bi-tri irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Bti;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Bti;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with two reactants and three products.</p>
</html>"));
end BiTri;
