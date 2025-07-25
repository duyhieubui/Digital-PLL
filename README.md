# Digital-PLL

## Tool setup
To use the project, you need to install `iverilog`, `openroad`,
`yosys` and `gf180mcuc` pdk for simulation and evaluation. You can use
conda environment in Linux or WSL as follows:

- Install miniconda, software and library for simulation

``` bash
wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh -p $HOME/eda-env -b -f
source $HOME/eda-env/bin/activate
conda install -c unic-cass iverilog openroad yosys open_pdks.gf180mcuc
```

- Check out the source code

``` bash
git clone https://github.com/duyhieubui/Digital-PLL
```

- Set up the environment variable `PDK_ROOT` and `PROJECT_ROOT`

``` bash
cd Digital-PLL
source env.sh

```

- Run the simulation

``` bash
cd $PROJECT_ROOT/sim
make
```

- Run the synthesis:

``` bash
cd $PROJECT_ROOT/openroad
make
```

