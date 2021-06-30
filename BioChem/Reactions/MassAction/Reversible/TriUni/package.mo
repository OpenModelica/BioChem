within BioChem.Reactions.MassAction.Reversible;

package TriUni "A+B+C <-> D reactions"
  extends BioChem.Icons.Library;

  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with three reactants and one product.</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end TriUni;
