# stanly
Static Analysis tools integrator script
***Stanly*** = **St**atic **An**a**ly**sis

Stanly is currently a simple wrapper script that trawls over a given codebase, invoking various well known static analysis tools on the code. The resulting output can be saved and analysed later. For eg.

> ./stanly {path-to-my-code-folder} 2>&1 | tee --append results.txt

Stanly is currently tuned to work on Linux kernel (and kernel module) code.
