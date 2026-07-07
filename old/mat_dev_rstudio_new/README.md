# Batch Connect - ACCRE RStudio Server

![GitHub Release](https://img.shields.io/github/release/accre/bc_accre_rstudio.svg)
[![GitHub License](https://img.shields.io/badge/license-MIT-green.svg)](https://opensource.org/licenses/MIT)

An interactive app designed for ACCRE OnDemand that launches RStudio server.
Adapted from the [OSC RStudio App](https://github.com/OSC/bc_osc_rstudio_server)

## Prerequisites

This Batch Connect app requires the following software be installed on the
**compute nodes** that the batch job is intended to run on (**NOT** the
OnDemand node):

- [Lmod] 6.0.1+ or any other `module restore` and `module load <modules>` based
  CLI used to load appropriate environments within the batch job before
  launching the RStudio Server.

**without Singularity**

- [R] 3.3.2+ (earlier versions are untested but may work for you)
- [RStudio Server] 1.0.136+ (earlier versions are untested by may work for you)
- [PRoot] 5.1.0+ (used to setup fake bind mount)

**or with Singularity**

- [Singularity] 2.4.2+
- A Singularity image similar to [nickjer/singularity-rstudio]
- Corresponding module to launch the above Singularity image (see
  [example_module])

[R]: https://www.r-project.org/
[RStudio Server]: https://www.rstudio.com/products/rstudio-server/
[PRoot]: https://proot-me.github.io/
[Singularity]: http://singularity.lbl.gov/
[Lmod]: https://www.tacc.utexas.edu/research-development/tacc-projects/lmod
[nickjer/singularity-rstudio]: https://www.singularity-hub.org/collections/463
[example_module]: https://github.com/nickjer/singularity-rstudio/blob/master/example_module/
