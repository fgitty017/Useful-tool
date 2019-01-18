# stanly

Static Analysis tools integrator script
***Stanly*** = **St**atic **An**a**ly**sis

Stanly is currently a simple wrapper script that trawls over a given codebase, invoking various well known static analysis tools on the code. The resulting output is saved and can be analysed later via the 'report' file. 

The reports are saved in the folder '`stanly_reports/`' under the cwd. Report name format: `stanly_reports/results_<timestamp>_dir.txt`.

F.e.

    $ stanly mycode4
    ...
    |- End Run : Fri Jan 18 12:12:17 IST 2019 -|
    stanly: am done, report / log here:
    -rw-r--r-- 1 <...> 34K Jan 18 12:12 stanly_reports/results_Fri_18Jan2019_1210_mycode4.txt
    $

Stanly is currently tuned to work on Linux kernel (and kernel module) code.
