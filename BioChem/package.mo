package BioChem "A library for modeling, simulation, and visualization of biological and biochemical systems"
  annotation(__Wolfram(itemFlippingEnabled = true), version = "1.2", uses(Modelica(version = "3.2.1")), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 100, 164}, fillColor = {0, 109, 179}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-100, -100}, {100, 100}}, radius = 25), Line(visible = true, origin = {13.869, 26.477}, points = {{-37.152, 36.494}, {46.131, -6.477}}, color = {255, 255, 255}, thickness = 6), Line(visible = true, origin = {-31.989, -23.802}, points = {{91.989, 43.802}, {-8.010999999999999, -16.198}}, color = {255, 255, 255}, thickness = 10), Ellipse(visible = true, origin = {-22.5, 62.5}, lineColor = {204, 204, 204}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, lineThickness = 0, extent = {{22.5, -22.5}, {-22.5, 22.5}}), Ellipse(visible = true, origin = {60, 20}, lineColor = {204, 204, 204}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, lineThickness = 0, extent = {{30, -30}, {-30, 30}}), Ellipse(visible = true, origin = {-40, -40}, lineColor = {204, 204, 204}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, lineThickness = 0, extent = {{40, -40}, {-40, 40}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  annotation(preferedView = "info", Documentation(info = "<!--WSMINSERTIONTAGSTART bioChemTag -->
 <p>The BioChem library is an extendable, general purpose Modelica library for modeling, simulation, and visualization of biological and biochemical systems. The library is designed to be used together with Wolfram <em><span style=\"font-style: italic;\">SystemModeler</span></em>, which enables several extra features such as systems biology markup language (SBML) import and export.<br /><br /> The Fig. 1 below shows a simple reaction network modeled using the BioChem library. For more information on how you can use the library, please have a look at the examples in the <a href=\"Modelica://BioChem.Examples\">Examples</a> package.<br /><br /><img src=\"modelica://BioChem/DocumentationFiles/ExampleReaction.png\" alt=\"\" /><br /><em>Fig. 1 a simple reaction network, where the concentration of substance 'D' inhibits the reaction between A+B and C.</em></p>
 <p>&nbsp;</p>
 <hr />
 <p><strong>Release Notes (BioChem 1.2)</strong></p>
 <p>Updates:</p>
 <ul>
 <li>All relevant library components now support Modelica dialog annotations</li>
 <li>Class Compartments.Compartment has been replaced by&nbsp;<a href=\"modelica://BioChem.Compartments.ConstantCompartment\">Compartments.ConstantCompartment</a></li>
 <li>Class Compartments.MainCompartment has been replaced by <a href=\"modelica://BioChem.Compartments.ConstantCompartment\">Compartments.ConstantCompartment</a>(mainCompartment = true)</li>
 <li>Class Interfaces.Compartments.Compartment has been replaced by&nbsp;<a href=\"modelica://BioChem.Compartments.VariableCompartment\">Compartments.VariableCompartment</a></li>
 <li>Class Interfaces.Compartments.MainCompartment has been replaced by <a href=\"modelica://BioChem.Compartments.VariableCompartment\">Compartments.VariableCompartment</a>(mainCompartment = true)</li>
 <li>Package Interfaces.Substances has been removed</li>
 </ul>
 <p><strong>Update models from BioChem 1.1:</strong></p>
 <p>To update a model/package based on substance, reaction, and compartment classes from BioChem 1.1, please open the model/package in a text editor and replace all instances of the following two classes:</p>
 <ul>
 <li>Compartments.Compartment</li>
 <li>Compartments.MainCompartment</li>
 </ul>
 <p>with <a href=\"modelica://BioChem.Compartments.ConstantCompartment\">Compartments.ConstantCompartment</a>. Finally, update the mainCompartment parameter to \"true\" in all previous MainComparment models.</p>
 <!--WSMINSERTIONTAGEND bioChemTag -->", revisions = "<h1>Version history</h1>
    <p>The first version of the library was created by Emma Larsdotter Nilsson at Link&ouml;ping University. The current version of the library has been further developed by Erik Ulfhielm at Link&ouml;ping University, and by MathCore Engineering AB.</p>
    <ul>
    Main Author 2007-2014: Wolfram MathCore AB <br /> Main Author 2006: Erik Ulfhielm <br /> Main Author 2004-2005: Emma Larsdotter Nilsson <br /> <br /> Copyright (c) 2005-2014 Wolfram MathCore AB, Link&ouml;pings universitet and the Modelica Association</p>
    <p>The <span style=\"font-family: Courier, Courier New\">BioChem</span> package is free software and can be redistributed and/or modified under the terms of the <a href=\"http://www.mathcore.com/products/mathmodelica/libraries/modelicalicense.php\">Modelica License, version 1.1</a> with the additional provision that changed parts of <span style=\"font-family: Courier, Courier New\">BioChem</span> also must be made available under this License. <br /> 
    </ul>"));
end BioChem;