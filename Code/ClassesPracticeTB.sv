`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: ClassesPracticeTB.sv
//Output
//START
//ID:      0
//Name:alpha
//weight:    10lb
//Location: North America, USA
//colors:
//Brown
//ID:      1
//Name:beta
//weight:    20lb
//Location: South America, Brazil
//colors:
//Brown
//ID:      2
//Name:Gamma
//weight:     2lb
//Location: Africa, Egypt
//colors:
//Brown
//wingspan:   4ft
//flight: 1
//parent
//virtual child function
//child
//virtual child function
//parent
//virtual step child function
//virtual step child function
//parent
//Amount of animals registered:       3
//Changed original.num = 4: original.num:           4  assignp.num:           4
//Changed assignp.num = 45: original.num:          45  assignp.num:          45
//original.num = 45: original.num:          45  assignp.num:          45 shallowcopy.num:          45
//Changed original.num = 14: original.num:          14  assignp.num:          14 shallowcopy.num:          45
//Changed shallowcopy.num = 21: original.num:          14  assignp.num:          14 shallowcopy.num:          21
//FINISH
//////////////////////////////////////////////////////////////////////////////////


module ClassesPracticeTB();
    //queue, associative array, dynamic array 
      integer iqueue [$:10] = {0,1,2,3,4,5,6,7,8,9,10};
      integer iaarray [string] = '{"-ONE":-1, "ZERO":0, "ONE":2}; 
      integer idarray [] = '{-2, -1, 0, 1, 2}; 
      string colour [$] = {"Brown"}; 
     
      function automatic void deletearrays (ref integer queue [$], ref integer aarray [string], ref integer darray [] );
            queue.delete; 
            aarray.delete; 
            darray.delete; 
      endfunction
      
      class location; 
        local string continent; 
        local string country; 
        
        function new (input string continent = "N/A", input string country = "N/A");
            this.continent = continent; 
            this.country = country; 
        endfunction 
        
        function void display(); 
            $display("Location: %s, %s", this.continent, this.country);
        endfunction 
      endclass; 
      
      class animal; 
       local string name; 
       local logic [17:0] weight; 
       local string colors [$];
       local logic [20:0] id; 
       local location home; //aggregate class 
       static logic [20:0] last_id = 0; 
        
        function new (input string name = "N/A", input logic [17:0] weight = 0, ref string colors [$], input string country = "N/A", input string continent = "N/A");
            this.name = name;
            this.weight = weight; 
            this.colors = colors; 
            this.id = last_id++; 
            home = new(continent, country);
        endfunction 
        
        function void display (); 
            $display ("ID:%d\nName:%s\nweight:%dlb", this.id, this.name, this.weight);
            home.display; 
            $display("colors:");
            foreach (colors[i]) begin 
                $display("%s",this.colors[i]);
            end 
        endfunction 
      endclass 
      
      class bird extends animal; //subclass of animal
        protected  logic [7:0] wingspan; 
        protected logic flight; 
        
        function new (input string name = "N/A", input logic [17:0] weight = 0, ref string colors [$], input string country = "N/A", input string continent = "N/A",
                      input logic [7:0] wingspan = 0, input logic flight = 0);
            super.new(name, weight, colors, country, continent);
            this.wingspan = wingspan; 
            this.flight = flight; 
        endfunction 
        function void display(); 
            super.display; 
            $display("wingspan: %dft", wingspan);
            $display("flight: %d", flight);
        endfunction 
      endclass 
      
      virtual class parent; 
       integer num = 0; 
        function void display();
            $display ("parent");
        endfunction
        pure virtual function void virtual_display();
      endclass 
      
      class child extends parent; 
          function void display(); 
            $display ("child");
          endfunction
          virtual function void virtual_display(); 
            $display("virtual child function");
          endfunction 
      endclass 
      
      class step_child extends parent; 
        virtual function void virtual_display(); 
            $display("virtual step child function"); 
        endfunction 
        extern function void message();
      endclass
      function step_child::message(); 
        $display("message step child function");
      endfunction 
      bird gamma; 
      animal delta; 
      parent epsilon; 
      child zeta; 
      step_child eta; 
      child original = new;
      child assignp; 
      child shallowcopy; 
      initial begin
        static animal alpha = new ("alpha", 10, colour, "USA", "North America");
        automatic animal beta = new ("beta", 20, colour, "Brazil", "South America");
        gamma = new ("Gamma", 2, colour, "Egypt", "Africa", 4, 1);
       // epsilon = new(); //cannot instantiate virtual class (abstract class) 
        zeta = new(); 
        epsilon = zeta; 
        eta = new(); 
        $display("START"); 
        alpha.display; 
        beta.display; 
        gamma.display;
        eta.display; 
        zeta.virtual_display;
        zeta.display;
        epsilon.virtual_display;
        epsilon.display; 
        epsilon = eta; 
        eta.virtual_display;
        epsilon.virtual_display; 
        epsilon.display; 
        $display("Amount of animals registered: %d", animal::last_id);
        //Classes shallow copy vs assignment 
        assignp = original; //assignment 
        original.num = 4; 
        $display("Changed original.num = 4: original.num: %d  assignp.num: %d", original.num, assignp.num);
        assignp.num = 45; 
        $display("Changed assignp.num = 45: original.num: %d  assignp.num: %d", original.num, assignp.num);
        shallowcopy = new original; //shallow copy 
        $display("original.num = 45: original.num: %d  assignp.num: %d shallowcopy.num: %d", original.num, assignp.num, shallowcopy.num);
        original.num = 14;
        $display("Changed original.num = 14: original.num: %d  assignp.num: %d shallowcopy.num: %d", original.num, assignp.num, shallowcopy.num);
        shallowcopy.num = 21;
        $display("Changed shallowcopy.num = 21: original.num: %d  assignp.num: %d shallowcopy.num: %d", original.num, assignp.num, shallowcopy.num);
        $display ("FINISH"); 
        $finish; 
    end       
endmodule
