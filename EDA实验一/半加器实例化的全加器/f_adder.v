module f_adder(a,b,cin,sum,cout);
                input a,b,cin;
                output sum,cout;
                wire net1,net2,net3;
                h_adder U1(a,b,net1,net2);
                h_adder U2(net1,cin,sum,net);
                   or   U3(cout,net3,net2);
              endmodule
