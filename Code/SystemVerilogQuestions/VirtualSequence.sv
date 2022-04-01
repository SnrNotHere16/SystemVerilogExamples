/*how to start virtual sequencer ?
1 You can start virtual sequences on a virtual sequencer.
2 Handles part of the virtual sequence  can be started on null virtual sequencer, 
it means you can start() the virtual sequence on a ‘null’ virtual sequencer.
*/
task run_phase (uvm_phase phase);
	/// Create the Virtual Sequence
	my_vseq vsequence = my_vseq::type_id::create(“vseq”);
	phase.raise_objection(this);
	/// Virtual Sequence Initialization
	init_vseq(vsequence );
	/// Start the Virtual Sequence
	vsequence.start(null);
	phase.drop_objection(this);
endtask: run_phase
/*>vsequence is virtual sequence , v_sqr is handle of virtual sequencer, 
vseq is started on v_sqr*/