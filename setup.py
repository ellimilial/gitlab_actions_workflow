from setuptools import setup, find_packages
from package import __version__

REQUIRED_PACKAGES = []

setup(
    name="package",
    entry_points={"console_scripts": ["run_main = package.main:main"]},
    version=__version__,
    install_requires=REQUIRED_PACKAGES,
    tests_require=REQUIRED_PACKAGES,
    packages=find_packages(),
)
