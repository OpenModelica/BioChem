within BioChem.Reactions;

package MassAction "Mass-action kinetics reactions"
  extends BioChem.Icons.Library;
  annotation(Documentation(info = "<p>The mass-action reactions are obtained by extending the reaction types in      <a href=\"modelica://BioChem.Interfaces.Reactions\">Reactions</a> and then adding an equation for the relation between the reaction rate and the participating substances, that is, substrates, products, and interacting enzymes. The mass-action kinetics package is divided into the subpackages Irreversible and Reversible to facilitate finding the desired reaction.&nbsp;</p>
 <p><br /> <img src=\"../../Images/MassAction.png\" alt=\"\" /></p>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end MassAction;