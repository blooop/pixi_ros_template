# pixi_ros_template
A template repo for ros projects that is set up using [pixi](https://pixi.sh). 

Based off this repo: https://github.com/ruben-arts/turtlesim-pixi

# Install

install [pixi](https://pixi.sh/latest/) if you don't already have it and then:

```bash
cd pixi_ros_template
pixi update
```

# Docker

If you want extra isolation you can use rocker to launch this inside a docker container.

Install [uv](https://docs.astral.sh/uv/getting-started/installation/)

```bash
uv tool install rockerc
uv tool install rockervsc
```



```bash
cd pixi_ros_template
rockervsc #will build the container and attach vscode to it (if you have the devcontainers extension)
#or 
rockerc #will build and attach to a terminal in the template repo container
```

# Usage

Add your ros2 code (python or cpp) and run the build task.

```bash
cd pixi_ros_template

pixi run build
pixi run your_arbitrary_task
```

# Available tasks
- `build`
- `test`
- `clean`
- `ci`
- `lint`

# Demo

The main repo is left empty so that you can put your own ros packages there.  If you want to be able to try running the code with some packages that are already set up check out this branch

https://github.com/blooop/pixi_ros_template/tree/demo/turtlesim

which is directly based on https://github.com/ruben-arts/turtlesim-pixi

# Troubleshooting

If you get errors related to pixi

```bash
ags@4f74ccb41886:/workspaces$ pixi build
Error: 
  x unable to setup the build-backend to build the workspace
  `-> the pixi.toml does not describe a package
```

Delete your `pixi.lock` and `.pixi` directory and reinstall with `pixi update`
