within BioChem.Reactions.MassAction.Irreversible;

package BiUni "A+B -> C reactions"
  extends BioChem.Icons.Library;

  model Buifi "Bi-uni irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bui;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Buifi;

  model Buifafi "Bi-uni irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Buifafi;

  model Buifa "Bi-uni irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Bui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Buifa;

  model Bui "Bi-uni irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Bui;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Bui;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with two reactants and one product.</p>
</html>"));
end BiUni;
