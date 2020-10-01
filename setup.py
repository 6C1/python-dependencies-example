# setup.py
from setuptools import find_packages, setup

setup(
    name="example_project",
    packages=["example_project"],
    package_dir={"example_project": "./src"},
    py_modules=["example_project.entrypoint"],
    install_requires=[
        "hypercorn>=0.11,<1.0",
        "starlette>=0.13.0,<1.0",
        "toml==0.10.1",
    ],
)
