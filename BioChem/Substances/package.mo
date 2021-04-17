within BioChem;

package Substances "Reaction nodes"
  extends BioChem.Icons.Substances.PackageIcon;

    annotation(
    Documentation(info = "<html>
<h1>Substances</h1>
 <p>
 This package contains different types of nodes needed for representing a substance in a biochemical pathway.
 Substances are connected to reactions through connectors placed
 on the rim of the circle representing the substance.<br>
The substance models are specified by extending the partial models of substance nodes in
<a href=\"Modelica://BioChem.Interfaces.Substances\">Substances</a>
 and adding additional attributes and equations.
The
<a href=\"Modelica://BioChem.Substances.Substance\">Substances</a>

 model is used when the concentration in a substance node is allowed to change without restrictions during a simulation, while

<a href=\"Modelica://BioChem.Substances.BoundarySubstance\">BoundarySubstances</a>
 is used when the concentration can only be changed using events. This correspond to species with the fixed or boundary attribute set in SBML.<br>
The
<a href=\"Modelica://BioChem.Substances.AmbientSubstance\">AmbientSubstance</a>
 is a substance used as a reservoir in reactions. This corresponds to the empty list of reactants or the empty list of products in an SBML reaction.
When the concentration is not determined by reactions, the

<a href=\"Modelica://BioChem.Substances.SignalSubstance\">SignalSubstance</a>
 model is used. Then the substance concentration is regulated by external equations, and it  corresponds to SBML species changed by any SBML rules.
 </p>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Substance.png\" alt=\"Fig1: Substance\">
</html></html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Ellipse(origin = {-10, -50}, lineColor = {0, 56, 0}, fillColor = {0, 85, 0}, fillPattern = FillPattern.Sphere, extent = {{-60, -20}, {-20, 20}}), Ellipse(origin = {38, -10}, lineColor = {100, 100, 0}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Sphere, extent = {{-28, -60}, {12, -20}}), Ellipse(origin = {-30.0032, -2.75056}, lineColor = {0, 0, 71}, fillColor = {0, 0, 127}, fillPattern = FillPattern.Sphere, extent = {{0.0032, -13.4697}, {40, 26.5303}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));

/*
  annotation(
    Documentation(info = "<html>
<h1>Substances</h1>
 <p>
 This package contains different types of nodes needed for representing a substance in a biochemical pathway.
 Substances are connected to reactions through connectors placed
 on the rim of the circle representing the substance.<br>
The substance models are specified by extending the partial models of substance nodes in
<a href=\"Modelica://BioChem.Interfaces.Substances\">Substances</a>
 and adding additional attributes and equations.
The
<a href=\"Modelica://BioChem.Substances.Substance\">Substances</a>

 model is used when the concentration in a substance node is allowed to change without restrictions during a simulation, while

<a href=\"Modelica://BioChem.Substances.BoundarySubstance\">BoundarySubstances</a>
 is used when the concentration can only be changed using events. This correspond to species with the fixed or boundary attribute set in SBML.<br>
The
<a href=\"Modelica://BioChem.Substances.AmbientSubstance\">AmbientSubstance</a>
 is a substance used as a reservoir in reactions. This corresponds to the empty list of reactants or the empty list of products in an SBML reaction.
When the concentration is not determined by reactions, the

<a href=\"Modelica://BioChem.Substances.SignalSubstance\">SignalSubstance</a>
 model is used. Then the substance concentration is regulated by external equations, and it  corresponds to SBML species changed by any SBML rules.
 </p>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Substance.png\" alt=\"Fig1: Substance\">
</html></html>", revisions = ""));
*/ 
end Substances;
