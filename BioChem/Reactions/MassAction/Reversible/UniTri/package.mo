within BioChem.Reactions.MassAction.Reversible;

package UniTri "A <-> B+C+D reactions"
  extends BioChem.Icons.Library;

  annotation(
    Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end UniTri;
