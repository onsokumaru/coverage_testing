# README
---

## How to build to generate coverage reports
---

- **Compile in the build directory**

  Compile both source files with coverage flags:

        gcc -fprofile-arcs -ftest-coverage -Iinclude -o build/app src/main.c src/functions.c

- **Run the Program**

  Execute the program to generate coverage data:
    
        ./build/app
        ./build/app --help
        ./build/app first second third fourth
        
  
  Executing all three commands above will produce 100% coverage. Omit any if you choose.


- **Generate HTML Report**

  Navigate to the build directory and generate the HTML report:
  
        lcov --directory . --capture --output-file coverage.info
        genhtml coverage.html --output-directory coverage_html
        
- **View the Report**

  Open the **index.html** file in the **coverage_html** directory using a web browser to view the coverage report
