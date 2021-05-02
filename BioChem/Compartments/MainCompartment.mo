within BioChem.Compartments;

model MainCompartment "Main compartment (constant volume)"
  extends BioChem.Interfaces.Compartments.MainCompartment(V(stateSelect = StateSelect.prefer));
  extends Icons.Compartments.MainCompartment;
equation
  der(V) = 0 "Compartment volume is constant";
  annotation(
    Documentation(info = "<html>
<h1>MainCompartment</h1>

<p>
Main compartment model.
</p>
</html>", revisions = ""));
end MainCompartment;
