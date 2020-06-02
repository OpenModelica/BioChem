within BioChem.Reactions.MassAction.Irreversible;

package TriBi "A+B+C -> D+E reactions"
  extends Icons.Library;

  model Tbifi "Tri-bi irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tbi;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Tbifi;

  model Tbifafi "Tri-bi irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tbi;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Tbifafi;

  model Tbifa "Tri-bi irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Tbi;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Tbifa;

  model Tbi "Tri-bi irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Tbi;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Tbi;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with three reactants and two products</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end TriBi;
