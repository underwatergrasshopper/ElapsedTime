# ElapsedTime
Simple C++ library for measurement of elapsed time between two points in code.

## Example 1
```c++
ElapsedTime et;

et.Start();
// ... code ...
et.Stop();

printf("%f\n", et.Get());
```
## Example 2
ElapsedTime et;

et.Reset();
while (true) {
    // ... code ...
    et.Update();
    
    printf("%f\n", et.Get());
}
```

