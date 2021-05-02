within BioChem.Reactions.MassAction.Irreversible;

package UniBi "A -> B+C reactions"
  extends BioChem.Icons.Library;

  model Ubifi "Uni-bi irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Ubi;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s1.V;
  end Ubifi;

  model Ubifafi "Uni-bi irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Ubi;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V;
  end Ubifafi;

  model Ubifa "Uni-bi irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Ubi;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s1.V;
    annotation(
      Documentation(info = "<html>
<ul>
<li>Main Author 2007-2008: Jan Brug&aring;rd, MathCore Engineering AB</li>
<li>Main Author 2006: Erik Ulfhielm</li>
<li>Main Author 2004-2005: Emma Larsdotter Nilsson</li>
</ul>
</html>"));
  end Ubifa;

  model Ubi "Uni-bi irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Ubi;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s1.V;
    annotation(
      Documentation(info = "<html>
<ul>
<li>Main Author 2007-2008: Jan Brug&aring;rd, MathCore Engineering AB</li>
<li>Main Author 2006: Erik Ulfhielm</li>
<li>Main Author 2004-2005: Emma Larsdotter Nilsson</li>
</ul>
</html>"));
  end Ubi;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with one reactant and two products.</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end UniBi;
