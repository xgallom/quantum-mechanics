
# Numerical Solutions to Schrodinger Equation in Matlab

I used the Crank-Nicolson method to solve Schrodinger, using matlabs
linsolve.

## Project Organization

Project is organized in the following way:
- figures - contains generated animations
  - 1x - web optimized animations
  - 2x - half sized animations
- src - source directory, contains all scripts and functions. 
  You should be in this directory when you want to use the files

## Examples

### Simple usage

Generated gifs will be in the figures directory

```matlab
full_init;
full_double_slit;
```

`full_init` is required to set-up the environment for usage.
The `full_init` also runs the `wf_2d_wave_packet`.
The `wf_*` files assign wavefunctions to the psi variable,
You can also use any of the `pot_*` files to assign a potential to V.
After you have the basic setup, run a `solve_*` file to generate the `psi_o` variable.
This variable contains a 3D array of solved Schrodinger equation such that dimensions are `(x, y, t)`
You can also use the `gr_*` files to render animations with a specific V and psi. They are very slow,
but you can see the progress, and check the fast animation afterwards.

