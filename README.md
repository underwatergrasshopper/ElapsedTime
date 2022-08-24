# ElapsedTime
Simple C++ library for measurement of elapsed time between two points in code.

To use this library in project, followed files are required to be included into project source folder: `ElapsedTime.h`, `ElapsedTime.cpp`.

Successfuly compiled on:
- MS Visual Studio 2022
- GCC (with MinGW 13.0.0, by using `g++ -std=c++11 -O3 *.cpp -o test.exe && test.exe` in project dirctory)

Target platforms: Windows 7/8/10

## Usage Examples

### Example 1
```c++
ElapsedTime et;

et.Start();
// ... code ...
et.Stop();

printf("%f\n", et.Get());
```

### Example 2
```c++
ElapsedTime et;

et.Reset();
while (true) {
    // ... code ...
    et.Update();
    
    printf("%f\n", et.Get());
}
```

