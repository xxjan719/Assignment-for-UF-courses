# Assignment for UF courses
This repository is used for giving my solution for the courses [MAS5311](https://people.clas.ufl.edu/turull/f23-mas5311-syllabus/), [MAA5228](https://people.clas.ufl.edu/paulr/maa-5228-4226/) and [MAD 6406](https://people.clas.ufl.edu/chunmei-wang/courses/) now. I will do my best to try some exercises and  this will help me review some courses actually.

## Solutions for [MAS5311](https://people.clas.ufl.edu/turull/f23-mas5311-syllabus/)

## Solutions for [MAA5228](https://people.clas.ufl.edu/paulr/maa-5228-4226/)

## Solutions for [MAD 6406](https://people.clas.ufl.edu/chunmei-wang/courses/)
### Chapter 1
1. [Lecture1](MAD6406/Chapter1Lecture1.pdf) 
2. [Lecture2](MAD6406/Chapter1Lecture2.pdf)
3. [Formal homework week1](MAD6406/hw_week1.pdf)
4. [Lecture3](MAD6406/Lecture3.pdf)
5. [Lecture4](MAD6406/Chapter1Lecture4.pdf)
### Code problem for MAD 5406
For Lecture4 exercise 4.3: write a MATLAB program which, given a real $2 \times 2$ matrix, plots the right singular vectors $v_{1}$ and $v_{2}$ in the unit circle and also the left singular vectors $u_{1}$ and $u_{2}$ in the appropriate ellipse.

We need to know the right singular vectors ($V$) will always be on the unit circle, and the left singular vectors ($U$) when scaled by the singular values will define the shape of the ellipse.
We can write the scripts like the following:
```
function plotSingularVectors(A)

% Compute the Singular Value Decomposition
[U,S,V] = svd(A);

% Define the unit circle
theta = linspace(0,2*pi,100);
x = cos(theta);
y = sin(theta);

figure;

% Plot unit circle and right singular vectors
subplot(1,2,1);
plot(x,y); hold on;
quiver(0,0,V(1,1),V(2,1), 'r', 'LineWidth',2);
quiver(0,0,V(1,2),V(2,2), 'b', 'LineWidth',2);
title('Right Singular Vectors v1 (red) & v2 (blue)');
axis equal;
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);

% Plot ellipse and left singular vectors
subplot(1,2,2);
plot(U(1,1)*S(1,1)*x, U(2,1)*S(1,1)*y, 'g'); hold on;
plot(U(1,2)*S(2,2)*x, U(2,2)*S(2,2)*y, 'y');
quiver(0,0,U(1,1)*S(1,1),U(2,1)*S(1,1), 'r', 'LineWidth',2);
quiver(0,0,U(1,2)*S(2,2),U(2,2)*S(2,2), 'b', 'LineWidth',2);
title('Left Singular Vectors u1 (red) & u2 (blue)');
axis equal;

end
```
We can use $A = \[2,1;1,3\]$ to get the results
```
A = [2, 1; 1, 3];
plotSingularVectors(A);
```
Then we can deduce this:
![Screenshot](https://github.com/xxjan719/Assignment-for-UF-courses/MAD6406/imagelecture4_3.jpg)
