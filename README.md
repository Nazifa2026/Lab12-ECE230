# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Nazifa , Peter(49)

## Summary
We built a 5 state machine two ways  one-hot and binary in Verilog, programmed it on the Basys3, and tested it by manually stepping through states with a button. The point was to see that both encodings do the same thing but with different internal hardware.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One-hot uses one flip-flop per state so the logic is simple but you use more flip-flops. Binary packs everything into fewer flip-flops but the logic gets more complicated and you need KMaps to figure it out. Either way both machines do the exact same thing, the only difference is what's going on inside.

### Which method did your team find easier, and why?
We found one-hot easier because the logic basically writes itself. Once you know which state you're in, the next-state equations are just simple AND/OR gates. With binary you have to sit down and work through the KMaps carefully to get the right equations, and it's easy to make a mistake. One-hot is also easier to debug on the board since each LED directly represents one state so you can see exactly where the machine is at all times.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
Basically if you have a ton of states, binary saves you flip-flops. But on an FPGA flip-flops are usually not the problem LUTs are. Since one-hot has simpler logic it uses fewer LUTs, so on an FPGA one-hot can actually be the better choice. Just depends on what you're running out of.

