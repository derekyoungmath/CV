#import "@preview/fontawesome:0.6.0": *

#let btag = [#fa-icon("tag", size: 0.7em, fill: blue.lighten(40%))]
#let gtag = [#fa-icon("tag", size: 0.7em, fill: black.lighten(50%))]
#let btext(t) = {text(fill: blue)[#t]}
#set list(marker: [#fa-icon("square-check", size: 0.8em, fill: black.lighten(70%))])
#let cv-section(section) = {
  set text(size: 14.5pt,fill: black.lighten(40%))
  [= #smallcaps(section)]
  v(-0.4em)
  line(length:100%, stroke: 0.8pt + blue.lighten(40%), )
}
#let cv-subsection(section) = {
  set text(size: 12pt,fill: black.lighten(40%))
  [== #underline[#smallcaps(section)]]
}
#let firstname = [Derek]
#let lastname = [Young]
#let fullname = {
  text(
    font: "BigBlueTermPlus Nerd Font Mono",
    fill: blue.lighten(40%),
    size:23pt,
    weight: "extrabold",
    [#firstname #lastname]
  )
}
#show parbreak: none

#let date = datetime.today().display("[month repr:short] [day padding:none], [year]")
#set page(
  paper: {"us-letter"},
  margin: (left: 1.8cm, right: 1.8cm, top: 1.2cm, bottom: 1.2cm),
  footer: {
    let footer-style(str) = {
      text(size: 8pt, fill: rgb("#999999"), smallcaps(str))
    }
    table(
      columns: (1fr, 1fr, 1fr),
      inset: -2pt,
      stroke: none,
      footer-style([#firstname #lastname]),
      table.cell(align:center,footer-style([Last Updated: #date])),
      table.cell(align:right,footer-style([Curriculum Vitae])),
    )

  }
)

#set text(
  font: "New Computer Modern",
)

#let google = [#fa-icon("google", size: 0.8em, fill: blue.lighten(70%))]
#let webpage = [#fa-icon("link", size: 0.8em, fill: blue.lighten(70%))]
#let github = [#fa-icon("github", size: 0.8em, fill: blue.lighten(70%))]
#let orcid = [#fa-icon("orcid", size: 0.8em, fill: blue.lighten(70%))]

#table(
  align: left+bottom,
  columns: (1fr,auto,1.3fr),
  stroke: none,
  table.cell(colspan: 2)[
    #fullname \
    #text(fill: black.lighten(40%), [Assistant Professor]) \
    #text(fill: black.lighten(40%), [Mount Holyoke College]) \
    #text(fill: black.lighten(40%), [Mathematics and Statistics Department]) \
    #text(fill: black.lighten(40%), [50 College St, South Hadley, MA 01075]) \
  ],
  [
    #link(
      "https://derekyoungmath.github.io/"
    )[#webpage derekyoungmath]\
    #link("mailto:derekyoungmath@gmail.com")[#google derekyoungmath]\
    #link("https://github.com/derekyoungmath")[#github derekyoungmath]\
    #link("https://orcid.org/0000-0002-0463-0937")[#orcid 0000-0002-0463-0937]\
  ],

)


#cv-section[Education]

#let cv-entry(one,two,three,four,extra) = {
  v(-0.6em)
  table(
    columns: (1fr, 4cm),
    inset: 0pt,
    stroke: 0pt,
    gutter: 6pt,
    align: (x, y) => if x == 1 { right } else { auto },
    table(
      columns: 1,
      inset: 0pt,
      stroke: 0pt,
      row-gutter: 6pt,
      align: auto,
      text(size:
      12pt,
      fill:
      black.lighten(20%) ,strong(one)),
      text(size: 10pt, fill: blue,smallcaps(two)),
      text(size: 10pt, fill: black.lighten(50%),extra),
      
    ),
    table(
      columns: 1,
      inset: 0pt,
      stroke: 0pt,
      row-gutter: 6pt,
      align: auto,
      text(size: 10pt, fill: black.lighten(50%),four),
      text(size: 10pt, fill: blue,emph(three)),
    ),
  )
}

#cv-entry(
  [Doctor of Philosophy in Mathematics],
  [Iowa State University],
  [Ames, IA],
  [May 2019],
  [Advisor: Dr. Leslie Hogben],
)
#cv-entry(
  [Iowa State University],
  [Bachelor of Science],
  [Ames, IA],
  [May 2013],
  [Advisor: Dr. Sung Yell Song],
)
#cv-entry(
  [Florida State College at Jacksonville],
  [Associate of Arts],
  [Jacksonville, FL],
  [May 2010],
  [Advisor: Gregory Dietrich],
)

#cv-section[Academic Positions]

#cv-entry(
  [Assistant Professor],
  [Mount Holyoke College],
  [South Hadley, MA],
  [Fall 2022 -],
  [],
)
#cv-entry(
  [Visiting Lecturer],
  [Mount Holyoke College],
  [South Hadley, MA],
  [Fall 2021 - Spring 2022],
  [],
)
#cv-entry(
  [Hutchcroft Fellow, Postdoctoral Visiting Lecturer],
  [Mount Holyoke College],
  [South Hadley, MA],
  [Fall 2019 - Spring 2021],
  [],
)
#cv-entry(
  [Adjunct Instructor],
  [St. Olaf College],
  [Northfield, MN],
  [Spring 2019],
  [],
)
#cv-entry(
  [Teaching Assistant],
  [Iowa State University],
  [Ames, IA],
  [Fall 2013 - Fall 2018],
  [],
)
#cv-entry(
  [Research Assistant],
  [Iowa State University],
  [Ames, IA],
  [Summer 2017],
  [],
)

#cv-section[Scholarly Contributions]

Publications since joining MHC are marked as #btag . Single author publications
are marked as #gtag.

#cv-subsection[Journal Publications]

- Louis Deaett, #btext[Derek Young]. Relationships between minimum rank problem
  parameters for cobipartite graphs. _Discrete Applied Mathematics_, *2025* #btag

- Cashous Bortner, Jennifer Garbett, Elizabeth Gross, Naomi Krawzik,
    Christopher McClain, #btext[Derek Young]. Maximum likelihood degree of the
    $beta$-stochastic blockmodel. _Algebraic Statistics_, *2025* #btag

- Emelie Curl, Shaun Fallat, Ryan Moruzzi Jr, Carolyn Reinhart,
    #btext[Derek Young]. On the zero forcing number of the complement of graphs
    with forbidden subgraphs. _Linear Algebra and its Applications_, *2024* #btag

- Marina Arav, Louis Deaett, H. Tracy Hall, Hein van der Holst,
    #btext[Derek Young]. A matching-minor monotone parameter for bipartite
    graphs. _Linear Algebra and its Applications_, *2024* #btag

- F. Scott Dahlgren, Zachary Gershkoff, Leslie Hogben, Sara Motlaghian,
    #btext[Derek Young]. Inverse eigenvalue and related problems for hollow
    matrices described by graphs. _Electron. J. Linear Algebra_, *2022* #btag

- #btext[Derek Young]. Techniques for Determining Equality of the Maximum
    Nullity and the Zero Forcing Number of a Graph. _Electron. J. Linear
    Algebra_, *2021* #btag#gtag

- Joesph S. Alameda, Emelie Curl, Armando Grez, Leslie Hogben, O'Neill Kingston,
    Alex Schulte, #btext[Derek Young], and Michael Young. Families of graphs
    with maximum nullity equal to the zero forcing number. _Spec. Matrices_,
    6:56-67, *2018*

- Christina Eubanks-Turner, Matthew Jake Lennon, Eduardo Reynoso, Brandy
    Thibodeaux, Amanda Urquiza, Ashley Wheatley, #btext[Derek Young]. Using the
    division algorithm to decode Reed-Solomon Codes. _Shanghai Normal
    University_, 44:3, *2015*

#cv-subsection[ArXived Publications]

- Chassidy Bozeman, Joshua Carlson, Michael Dairyko, #btext[Derek Young],
  Michael Young. Lower Bounds for the Exponential Domination Number of $C_m
  times C_n$. #link("https://arxiv.org/abs/1803.01933"), *2018*

#cv-subsection[Invited Talks]
#box[
- _Relationships between minimum rank problem parameters for cobipartite graphs_
    : International Linear Algebra Society, Kaohsiung, Taiwan, June 23-25,
    *2025*.

- _Relationships between minimum rank problem parameters for cobipartite graphs_ : 56th Southeastern International Conference on Combinatorics, Graph Theory and Computing, Boca Raton, FL, March 3-7, *2025*.

- _Minimum Rank and Zero Forcing Parameters for Cobipartite Graphs_ : Joint Mathematics Meetings, Seattle, WA, January 8-11, *2025*.

- _Minimum Rank and Zero Forcing Parameters for Cobipartite Graphs_ : 54th Southeastern International Conference on Combinatorics, Graph Theory and Computing, Boca Raton, FL, March 6-10, *2023*.

- _Inverse eigenvalue and related problems for hollow matrices described by graphs_ : Joint Mathematics Meetings, January 3-6, *2023*.

- _The Zero Forcing Number and Maximum Nullity of a Graph_ : Smith College, November 17, *2022*.

- _The Zero Forcing Number and Maximum Nullity of a Graph_ : University of Hartford, November 11, *2022*.

- _Minimum Rank and Zero Forcing Parameters for Cobipartite Graphs_ : Joint Mathematics Meetings, April 6, *2022*.

- _The Zero Forcing Number and Maximum Nullity of a Graph_ : University of Massachusetts Amherst, October 8, *2021*.

- _The Maximum Nullity and Zero Forcing Number of a Graph_ : Joint Mathematics Meetings, Virtual, January 7, *2021*.

- _Maximum Nullity and Zero Forcing Number of a Graph_ : Slippery Rock University, Slippery Rock, PA, February 20, *2020*.

- _Some graphs whose maximum nullity and zero forcing number are the same_ : Joint Mathematics Meetings, Denver, CO, January 16, *2020*.

- _Determining the Maximum Nullity and Minimum Rank Field Independence for some graphs_ : 50th Southeastern International Conference on Combinatorics, Graph Theory and Computing, Boca Raton, FL, March 4-8, *2019*.

- _Techniques for Determining Equality of the Maximum Nullity and the Zero Forcing Number of a Graph_ : St. Olaf College Research Seminar, Northfield, MN, March 22, *2019*.
]
#cv-subsection[Contributed Talks]

- _Inverse eigenvalue and related problems for hollow matrices described by graphs_ : International Linear Algebra Society, June 22, *2022*.

- _Maximum Nullity and Zero Forcing Number of a Graph_ : Mount Holyoke College, South Hadley, MA, February 12, *2020*.

- _Determining the Maximum Nullity and Minimum Rank Field Independence for some graphs_ : Joint Mathematics Meetings, Baltimore, MD, January 16-19, *2019*.

- _Determining the maximum nullity and minimum rank field independence for some graphs_ : Conference for African-American Researchers in the Mathematical Sciences, Princeton, NJ, July 11-14, *2018*.

- _Lower Bounds for the Exponential Domination Number of $C_m times C_n$_ : 47th Southeastern International Conference on Combinatorics, Graph Theory and Computing, Boca Raton, FL, March 7-11, *2016*.

- _Flows in Networks_ : 7th Annual GMAP Research Symposium, Ames, IA, May 19, *2013*.

- _Division Algorithm Decoding of Reed Solomon Codes_ : 2012 Young Mathematicians Conference, Columbus, OH, July 27-29, *2012*.

#cv-subsection[Contributed Posters]

- _Determining the maximum nullity and minimum rank field independence for some graphs_ : Conference for African-American Researchers in the Mathematical Sciences, Princeton, NJ, July 11-14, *2018*.

- _Families of graphs with maximum nullity equal to zero forcing number_ : International Linear Algebra Society, Ames, IA, July 24-28, *2017*.

- _Families of graphs with maximum nullity equal to zero forcing number_ : Conference for African-American Researchers in the Mathematical Sciences, Ann Arbor, MI, June 21-24, *2017*.

- _Lower Bounds for the Exponential Domination Number of $C_m times C_n$_ : Conference for African-American Researchers in the Mathematical Sciences, Princeton, NJ, June 15-18, *2016*.

- _Finite Approximations of Ammann-Beenker Tiling_ : Conference for African-American Researchers in the Mathematical Sciences, Princeton, NJ, June 11-14, *2014*.

- _Randomize Matrix Multiplication_ : Society for Advancement of Chicanos and Native Americans in Science, San Jose, CA, October 27-30, *2011*.

#cv-subsection[Attended Workshops]

- _Research Experiences for Undergraduate Faculty (REUF)_ : American Institute of Mathematics, Pasadena, CA, *2024*.

- _Research Experiences for Undergraduate Faculty (REUF)_ : American Institute of Mathematics, Providence, RI, *2023*.

- _Project New Experiences in Teaching (NExT)_ : Mathematical Association of America, Tampa, FL, *2023*.

- _Project New Experiences in Teaching (NExT)_ : Mathematical Association of America, Baltimore, MD, *2022*.

- _Mathematics Research Communities (MRC)_ : American Mathematical Society, Remote, *2021*.

- _AIM Research Communities (ARC)_ : American Institute of Mathematics, Remote, *2021*.

- _African Diaspora Joint Mathematics Workshop (ADJOINT)_ : Mathematical Sciences Research Institute, Berkeley, CA, *2019*.

- _Graduate Research Workshop in Combinatorics (GRWC)_ : University of Colorado Denver, Denver, CO, *2017*.

#v(4em)

#cv-section[Teaching Experience]

#cv-subsection[Courses]

Courses taught during a modular semester marked as #btag and #gtag. These
courses were taught in the first eight weeks and second eight weeks of the
semester respectively.

#v(1em)


- _Linear Algebra_ : Mount Holyoke College - Assistant Professor, *S 2025*.

- _Abstract Algebra (Group Theory)_ : Mount Holyoke College - Assistant Professor, *S 2025*.

- _Independent Study_ : Mount Holyoke College - Assistant Professor, *S 2025*.

  / #fa-icon("person", size: 0.8em, fill: black.lighten(70%)): _Kewen Yuan_ : Graph Theory: Zero Forcing and Directly Forceable Graphs

  / #fa-icon("person", size: 0.8em, fill: black.lighten(70%)): _Khanh Dinh_ : Graph Theory: Zero Forcing and Directly Forceable Graphs

- _Calculus II_ : Mount Holyoke College - Assistant Professor, *F 2024*.

- _Discrete Mathematics_ : Mount Holyoke College - Assistant Professor, *F 2024*.

- _Independent Study_ : Mount Holyoke College - Assistant Professor, *F 2024*.

  / #fa-icon("person", size: 0.8em, fill: black.lighten(70%)): _Kewen Yuan_ : Graph Theory: Zero Forcing and Directly Forceable Graphs

- _Linear Algebra_ : Mount Holyoke College - Assistant Professor, *S 2024*.

- _Abstract Algebra (Group Theory)_ : Mount Holyoke College - Assistant Professor, *S 2024*.

- _Calculus II_ : Mount Holyoke College - Assistant Professor, *F 2023*.

- _Calculus II_ : Mount Holyoke College - Assistant Professor, *F 2023*.

- _Linear Algebra_ : Mount Holyoke College - Assistant Professor, *S 2023*.

- _Linear Algebra_ : Mount Holyoke College - Assistant Professor, *S 2023*.

- _Discrete Mathematics_ : Mount Holyoke College - Assistant Professor, *F 2022*.

- _Independent Study_ : Mount Holyoke College - Assistant Professor, *F 2022*.

  / #fa-icon("person", size: 0.8em, fill: black.lighten(70%)): _Jennifer Pham_ :
      Graph Theory: Planar graphs
  
  / #fa-icon("person", size: 0.8em, fill: black.lighten(70%)): _Laura Thornburg_
      : Graph Theory: Ramsey numbers

- _Calculus II_ : Mount Holyoke College - Visiting Lecturer, Remote, *S 2022*.
  #gtag

- _Discrete Mathematics_ : Mount Holyoke College - Visiting Lecturer, Remote,
  *S 2022*. #btag

- _Calculus II_ : Mount Holyoke College - Visiting Lecturer, Remote, *F 2021*. #gtag

- _Discrete Mathematics_ : Mount Holyoke College - Visiting Lecturer, Remote, *F 2021*. #btag

- _Discrete Mathematics_ : Mount Holyoke College - Visiting Lecturer, Remote, *F 2021*. #btag

- _Discrete Mathematics_ : Mount Holyoke College - Postdoctoral Visiting Lecturer, Remote, *S 2021*. #gtag

- _Linear Algebra_ : Mount Holyoke College - Postdoctoral Visiting Lecturer, Remote, *S 2021*. #btag

- _Linear Algebra_ : Mount Holyoke College - Postdoctoral Visiting Lecturer, Remote, *F 2020*. #gtag

- _Linear Algebra_ : Mount Holyoke College - Postdoctoral Visiting Lecturer, Remote, *F 2020*. #btag

- _Discrete Mathematics_ : Mount Holyoke College - Postdoctoral Visiting Lecturer, Remote and South Hadley, MA, *S 2020*.

- _Discrete Mathematics_ : Mount Holyoke College - Postdoctoral Visiting Lecturer, *F 2019*.

- _Calculus I_ : St. Olaf College - Adjunct Instructor, Northfield, MN, *S 2019*.

- _Calculus I_ : St. Olaf College - Adjunct Instructor, Northfield, MN, *S 2019*.

- _College Algebra_ : Iowa State University, Ames, IA, *Su 2018*.

- _Calculus I_ : Iowa State University, Ames, IA, *S 2017*.

#cv-subsection[Mentoring]

- _Undergraduate Research_ : Mount Holyoke College, *Su 2024*.

#cv-section[Services]

#cv-subsection[National]

- _Hudson River Undergraduate Conference_ : Section Moderator, Mount Holyoke
  College, *F 2023*.

#cv-subsection[Institutional]

- _Search Committee_ : Served as a member of Mathematics and Statistics search committee, Mount Holyoke College, *F 2023*.

- _Search Committee_ : Served as a member of Mathematics and Statistics search committee, Mount Holyoke College, *F 2022*.

#cv-subsection[Departmental]

- _Math/Stat Lunches_ : Organize weekly meetings, Mount Holyoke College, *S 2025*.
- _Math/Stat Lunches_ : Co-organize weekly meetings, Mount Holyoke College, *F
  2020*.

#cv-section[Accomplishments]

#cv-subsection[Grants]

- _Data Analytics and Society Nexus track_ : Mount Holyoke College, Teaching *Su 2022*.

- _A Room of One's Own_ : Duke University, Research Facilitator *S 2020*.

- _Solve-a-Thon Grant_ : Iowa State University, Session Organizer, *S 2017*.

- _Solve-a-Thon Grant_ : Iowa State University, Session Organizer, *S 2016*.

#cv-subsection[Honors and Award]

- _Poster Award for "Best Theory"_ : Conference for African-American Researchers in the Mathematical Sciences (CAARMS),  , *2018*.

- _Pathways Scholar for Transforming Undergraduate Mathematics Education Certificate_ : Arizona State University,  , *2016*.

- _Ronald E. McNair Scholar_ : Iowa State University,  , *2010*.

#cv-section[Skills]

#cv-subsection[Computer]

- Linux, Python, Git, Bash, LaTeX, Typst, Html

