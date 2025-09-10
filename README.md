# Discrete-Time Signals in MATLAB

This project demonstrates the generation and visualization of common **discrete-time signals** using MATLAB.  
Each signal is created over a finite range of integers `n = -10:10` and plotted using the `stem()` function.

---

## Signals Implemented

### 1. Unit Impulse (δ[n])

- Definition:  
  \[
  \delta[n] = \begin{cases}
  1 & n=0 \\
  0 & n \neq 0
  \end{cases}
  \]
- A single spike at `n=0`.
- Used as a fundamental building block in discrete systems.

---

### 2. Unit Step (u[n])

- Definition:  
  \[
  u[n] = \begin{cases}
  1 & n \geq 0 \\
  0 & n < 0
  \end{cases}
  \]
- Turns “on” at `n=0`.

---

### 3. Unit Ramp (r[n])

- Definition:  
  \[
  r[n] = \begin{cases}
  n & n \geq 0 \\
  0 & n < 0
  \end{cases}
  \]
- Increases linearly for positive `n`.

---

### 4. Exponential Signal (aⁿ)

- Definition:  
  \[
  x[n] = a^n u[n]
  \]
- Example used here: \( a = 0.8 \), which creates a decaying exponential.

---

### 5. Signum Function (sgn[n])

- Definition:  
  \[
  \text{sgn}[n] = \begin{cases}
  1 & n > 0 \\
  0 & n = 0 \\
  -1 & n < 0
  \end{cases}
  \]
- Represents the sign of `n`.

---

### 6. Sinc Function

- Definition:  
  \[
  \text{sinc}[n] = \frac{\sin(\pi n)}{\pi n}, \quad \text{sinc}[0] = 1
  \]
- Appears in signal processing and sampling theory.

---

## How to Run

1. Open MATLAB.
2. Copy the script `signals.m` into your workspace.
3. Run the script:
   ```matlab
   signals
   ```
