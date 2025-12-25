#set math.equation(numbering: "(1)")
#set math.vec(delim: "[", align: right)
#set math.mat(delim: "[", column-gap: 1em)
#set page(
  paper: "us-letter",
  header: [
    #smallcaps[_EECS 127_]
    #h(1fr)
    #link(<toc>)[Back to TOC]
    #h(1fr)
    _Soklynin Nou_
    #line(length: 100%)
  ],
  numbering: "1",
)
#set par(
  justify: true,
)
#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#set heading(numbering: "1.")
#set list(indent: 1.2em)
#set enum(indent: 1.2em)

#let topic(title, lecture, date) = {
  align(center, text(17pt)[
    #rect(width: 80%, inset: 20pt)[
      *#title* \
      #set text(size: 12pt)
      Lecture #lecture \
      #date/25
]
])
}

#let dis(dis, date) = {
  align(center, text(12pt)[
      *Discussion #dis* \
      #date/25
])
}

#let dom(function) = {
  $d o m a i n(function)$
}

#include "cover.typ"
#pagebreak()

#include "contents.typ"
#pagebreak()

#include "others/summary.typ"
#pagebreak()

#topic("Introduction", "1", "8/28")
#include "lectures/lecture-1.typ"
#linebreak()

#topic("Types of Optimization Problems", "2", "9/2")
#include "lectures/lecture-2.typ"
#linebreak()

// #dis("1", "9/3")
// #include "discussions/dis-1.typ"
// #linebreak()

#topic("Subspaces and Dimensions", "3", "9/4")
#include "lectures/lecture-3.typ"
#linebreak()

#topic("Gradients, Taylor Series, and Other Stuff", "4", "9/9")
#include "lectures/lecture-4.typ"
#linebreak()

#topic("Ranges and Null Space", "5", "9/11")
#include "lectures/lecture-5.typ"
#linebreak()

#topic("Least Squares", "6", "9/16")
#include "lectures/lecture-6.typ"
#linebreak()

#topic("Second Order Optimization Conditions", "7", "9/18")
#include "lectures/lecture-7.typ"
#linebreak()

#topic("Regression continued and Singular Values", "8", "9/23")
#include "lectures/lecture-8.typ"
#linebreak()

#topic("Low-Rank Optimization", "9", "9/25")
#include "lectures/lecture-9.typ"
#linebreak()

#topic("Low-Rank Optimization cont.", "10", "9/30")
#include "lectures/lecture-10.typ"
#linebreak()

#topic("Conditional Numbers", "11", "10/2")
#include "lectures/lecture-11.typ"
#linebreak()

#topic("Sets", "13", "10/9")
#include "lectures/lecture-13.typ"
#linebreak()

#topic("Hyperplanes", "14", "10/14")
#include "lectures/lecture-14.typ"
#linebreak()

#topic("Convexity", "15", "10/16")
#include "lectures/lecture-15.typ"
#linebreak()

#topic("Convex Optimization", "16", "10/21")
#include "lectures/lecture-16.typ"
#linebreak()

#topic("Coercive Functions", "17", "10/30")
#include "lectures/lecture-17.typ"
#linebreak()

#topic("Linear Programming", "18", "11/4")
#include "lectures/lecture-18.typ"
#linebreak()

#topic("Quadratic Programming", "19", "11/6")
#include "lectures/lecture-19.typ"
#linebreak()

#topic("Optimality Conditions", "20", "11/13")
#include "lectures/lecture-20.typ"
#linebreak()

#topic("Duality of LP and QP", "21", "11/18")
#include "lectures/lecture-21.typ"
#linebreak()

#topic("Karush-Kuhn-Tucker Conditions", "22", "11/20")
#include "lectures/lecture-22.typ"
#linebreak()

#topic("Infeasibility Problem", "23", "11/25")
#include "lectures/lecture-23.typ"
#linebreak()

#topic("Sensitivity Analysis", "24", "11/25")
#include "lectures/lecture-24.typ"
#linebreak()

#topic("Sensitivity Analysis", "25", "11/25")
#include "lectures/lecture-25.typ"
#linebreak()

#topic("Matrix Optimization", "26", "12/2")
#include "lectures/lecture-26.typ"
#linebreak()

