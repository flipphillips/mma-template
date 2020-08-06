# MMa

![icon](icon.png)

A template for Mathematica and Wolfram Language projects.

## Theory

A generic directory setup that allows some degree of portability between systems for storing data.

This stuff should probably use LFS for data-related files. The problem is that the template mechanism in GitHub doesn't support it very well yet. So you have to maybe do it after you instantiate the template.

## Features

- `common.wl` - common functions used by everything. Seeded with a palette we used for one of our recent papers and a few file path tools.
- `paths.wl` - this is where the important stuff is. Defines a set of notebook-relative paths such as -
  - `$projectroot` - where everything lives
  - `$figuresdir` - output directory for figures
  - `$dumpsdir` - place for `WXF` files on a per-experiment basis
  - `$datadir` - raw data used to generate the dumps above (speed)
  - `$commondumpsdir` - dumps common to all experiments
  - `$commondatadir` - data common to all experiments

## Setup

*Note that, this should be automated at some point.*

1. Run `setup_version` to copy over proper scripts into `.git/hooks`
2. Change `version.json` to have proper data.
3. Turn on `git lfs` if needed.
4. Edit `README.md`
5. Edit `CHANGELOG.md`
6. Edit `TODO.md`
7. Check `LICENSE`
8. Check/modify/clone the `M1` notebook.
