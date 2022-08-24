////////////////////////////////////////////////////////////////////////////////
// MIT License
// 
// Copyright (c) 2022 underwatergrasshopper (aka Doctor Poltergeist)
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
////////////////////////////////////////////////////////////////////////////////

/**
 * ElapsedTime.h
 * @author underwatergrasshopper (aka Doctor Poltergeist)
 * @version 2.0.3 2022/08/24
 */

#ifndef ELAPSEDTIME_H_
#define ELAPSEDTIME_H_

#include <windows.h>

/** Measures difference in seconds between two points in code. */
class ElapsedTime {
public:
    ElapsedTime() {
        m_stop = m_start = {};
        m_diff = 0;
    }
    
    void Start() {
        QueryPerformanceCounter(&m_start);
    }
    
    void Stop() {
        QueryPerformanceCounter(&m_stop);
        m_diff = double(m_stop.QuadPart - m_start.QuadPart) / sm_freq.QuadPart;
    }
    
    void Update() {
        Stop();
        m_start = m_stop;
    }
    
    void Reset() {
        Start();
        m_stop = m_start;
        m_diff = 0;
    }
    
    /** @return time in seconds. */
    double Get() const { return m_diff; } 

private:
    LARGE_INTEGER           m_start;
    LARGE_INTEGER           m_stop;
    double                  m_diff; ///< Time in seconds.
    
    static LARGE_INTEGER    sm_freq;
};

// --- Example 1 --- //
// ElapsedTime et;
// et.Start();
// ... code ...
// et.Stop();
// printf("%f\n", et.Get());

// --- Example 2 --- //
// ElapsedTime et;
// et.Reset();
// while (true) {
//     ... code ...
//     et.Update();
//     printf("%f\n", et.Get());
// }

#endif // ELAPSEDTIME_H_
