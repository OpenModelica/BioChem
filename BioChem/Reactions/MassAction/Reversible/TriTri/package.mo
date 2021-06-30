within BioChem.Reactions.MassAction.Reversible;

package TriTri "A+B+C <-> D+E+F reactions"
  extends BioChem.Icons.Library;

  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with three reactants and three products.</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end TriTri;
