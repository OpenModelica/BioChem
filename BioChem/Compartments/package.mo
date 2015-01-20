within BioChem;

package Compartments "Package with basic compartments"
  extends BioChem.Icons.Library;

  model ConstantCompartment "Standard compartment (constant volume)"
    inner BioChem.Units.Volume V(start = 1, stateSelect = StateSelect.prefer) "Compartment volume (constant)" annotation(Dialog(group = "Initialization", showStartAttribute = true));
    parameter Boolean mainCompartment = false "Specifies whether the compartment is a main (top-level) compartment. Used in SBML import/export." annotation(Dialog(tab = "SBML", group = "SBML parameters"));
  equation
    der(V) = 0 "Compartment volume is constant";
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART constantCompartmentTag -->
    <body>
    Compartment model with constant volume. The volume is specifed by specifying an initial value for the variable \"V\".<br><br>
 The model also includes a SBML-specific parameter \"mainCompartment\" used to specify whether or not the compartment is a main (top-level) compartment. The parameter is found under the \"SBML\" tab.
    </body>
    <!--WSMINSERTIONTAGEND constantCompartmentTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, textColor = {0, 85, 0}, extent = {{-100, -160}, {100, -110}}, textString = "%name", fontName = "Arial"), Rectangle(visible = true, lineColor = {119, 163, 37}, fillColor = {242, 224, 152}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-110, -110}, {110, 110}}, radius = 20), Text(visible = mainCompartment, origin = {1.438, -5}, extent = {{-111.438, -45}, {108.562, 45}}, textString = "main", fontName = "Arial")}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end ConstantCompartment;

  partial model VariableCompartment "Standard compartment (variable volume)"
    inner BioChem.Units.Volume V(start = 1, stateSelect = StateSelect.prefer) "Compartment volume" annotation(Dialog(group = "Variables"));
    parameter Boolean mainCompartment = false "Specifies whether the compartment is a main (top-level) compartment. Used in SBML import/export." annotation(Dialog(tab = "SBML", group = "SBML parameters"));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART variableCompartmentTag -->
    <body>
    Partial compartment model with variable volume. Note that the model is underdetermined. An equation defining the dynamics of the variable \"V\" needs to be added as an equation in the \"Text View\" of the compartment model.<br><br>
 The model also includes a SBML-specific parameter \"mainCompartment\" used to specify whether or not the compartment is a main (top-level) compartment. The parameter is found under the \"SBML\" tab.
    </body>
    <!--WSMINSERTIONTAGEND variableCompartmentTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, textColor = {0, 85, 0}, extent = {{-100, -160}, {100, -110}}, textString = "%name", fontName = "Arial"), Rectangle(visible = true, lineColor = {119, 163, 37}, fillColor = {242, 224, 152}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-110, -110}, {110, 110}}, radius = 20), Text(visible = mainCompartment, origin = {1.438, -5}, extent = {{-111.438, -45}, {108.562, 45}}, textString = "main", fontName = "Arial")}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end VariableCompartment;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART compartmentsTag -->
    <body>
    This package contains compartment models. All models using the BioChem package must inherit a compartment.
 <br><br>In order to be able to control the environment of the reaction during a simulation, a chemical reaction must take place in a restricted screened-off container. Within this container the basic physical properties, for example, volume and temperature, are the same for all reactions that take place and all substances contained in that container. In BioChem.Compartments this is solved using the Modelica inner-outer construct, that is, providing a \"semiglobal\" variable for a whole compartment declared using the inner prefix. Thus, all substances in a compartment can automatically refer to the compartment volume.<h4>See also</h4>
     <ul><li><a href=\"Modelica://BioChem.Reactions\">Reactions</a></li><li><a href=\"Modelica://BioChem.Substances\">Subtances</a></li></ul>
    </body>
    <!--WSMINSERTIONTAGEND compartmentsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, origin = {15.0, 20.0}, lineColor = {26, 118, 164}, fillColor = {129, 183, 209}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-70.0, -70.0}, {40.0, 30.0}}, radius = 20)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Compartments;