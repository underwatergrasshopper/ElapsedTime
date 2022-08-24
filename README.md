# ElapsedTime
Simple C++ library for measurement of elapsed time between two points in code.

To use this library in project, followed files are required to be included into project source folder: `ElapsedTime.h`, `ElapsedTime.cpp`.

# Usage

## Example 1
```c++
ElapsedTime et;

et.Start();
// ... code ...
et.Stop();

printf("%f\n", et.Get());
```

## Example 2
```c++
ElapsedTime et;

et.Reset();
while (true) {
    // ... code ...
    et.Update();
    
    printf("%f\n", et.Get());
}
```

