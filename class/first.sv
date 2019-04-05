// Class declared containing variable x
class point;
  int x;

  function new (int initial_position);
    x = initial_position;
  endfunction

  function void move (int dx);
    x = x + dx;
  endfunction

  function void rnd_move;
    x = $urandom; //unsigned random number
  endfunction

  function int get_position;
    return x;
  endfunction

endclass



module test();


initial begin

point p=new(5);

$display("%d",p.x); //Access variable using dot operator

p.move(10);

$display("%d",p.get_position()); //Access using class method

p.rnd_move;

$display("%d",p.x);


end

endmodule
