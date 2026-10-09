# CMPE 310 - Lab: C Language Code and Assembly

The source files match Figures 1-5 in the assignment, with simple formatting.

## On UMBC Linux (from this folder)

```bash
gcc -O0 -S -m32 helloworld.c -o helloworld_O0_32.s
gcc -O4 -S -m32 helloworld.c -o helloworld_O4_32.s
# If -m32 fails, use -O0 / -O4 without -m32 and mention the difference in your report.
gcc -O0 -S HelloWorld.c -o HelloWorldC.s
g++ -O0 -S HelloWorldCpp.cpp -o HelloWorldCpp.s
gcc -O0 -S while.c -o while.s
wc -lc HelloWorldC.s HelloWorldCpp.s
gcc max.s -o max
./max
```

Expected max output: `Maximum = 23`.

To display generated assembly: `cat helloworld_O0_32.s`, `cat helloworld_O4_32.s`, `cat while.s`.

## Deliverables

Fill in the measurement placeholders in `Lab20_Report.md` using the UMBC Linux `wc -lc` results. The report also identifies where to paste relevant compiler-generated assembly snippets. The lab explicitly asks you to attach the full Part IA and IB assembly, but **not** the full Part II C++ assembly.

## GitHub / submission

GitHub is only required if your instructor separately requests it. Upload the source files, generated `.s` files and completed report to the submission location specified by your course. Do not upload executable files unless asked.
