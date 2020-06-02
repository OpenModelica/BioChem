within BioChem.Math;

function piecewise "Piecewise function that corresponds to the SBML piecewice definition"
  input Real[:] value "Input values in the form {value1,value2,...,valueN,valueN+1}.";
  input Boolean[:] condition "Input conditions in the form {condition1,condition2,...,conditionN}. Not more than one condition is allowed to be true at any given time.";
  output Real y "Output value selected from the list of inputs.";
protected
  parameter Integer nin = size(condition, 1);
algorithm
  y := value[nin + 1];
  for i in 1:nin loop
    if condition[i] then
      y := value[i];
    end if;
  end for;
  annotation(
    Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, grid = {10, 10})),
    Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {0.0, -0.0}, fillPattern = FillPattern.Solid, extent = {{-100.0, -30.0}, {100.0, 30.0}}, textString = "piecewise()", fontName = "Arial")}));
end piecewise;
