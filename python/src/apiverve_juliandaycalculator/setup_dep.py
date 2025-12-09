from setuptools import setup, find_packages

setup(
    name='apiverve_juliandaycalculator',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Julian Day Calculator converts between Gregorian calendar dates and Julian Day Numbers (JDN). Julian Day is a continuous count of days used in astronomy and historical research.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
