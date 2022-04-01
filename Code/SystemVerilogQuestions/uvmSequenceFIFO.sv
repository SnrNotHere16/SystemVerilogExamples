//Write uvm sequence item for asynchronous fifo ??
//https://testbench4u.com/2018/09/08/write-sequence-item-asynchronous-fifo/
class seqItem extends uvm_sequence_item;
	`uvm_object_utils(seqItem)

	logic [8-1:0] rdata;
	logic wfull;
	logic rempty;
	rand logic [8-1:0] wdata;
	logic winc, wrst_n;
	logic rinc, rrst_n;

	function new (string name=”seqItem”);
		super.new(name);
	endfunction

endclass