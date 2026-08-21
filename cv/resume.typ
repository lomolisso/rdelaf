// Short version: one page, for industry computer architecture internship applications.
// Uses the same template.typ as the full CV.

#import "template.typ": *

#show: resume.with(
  author: "Raúl de la Fuente",
  location: "Urbana, IL",
  lastupdated: "2026-08-20",
  contacts: (
    [#link("mailto:rid2@illinois.edu")[Email]],
    [#link("https://rdelaf.nand.cl")[Website]],
    [#link("https://github.com/lomolisso")[GitHub]],
    [#link("https://www.linkedin.com/in/rdelaf-armijo/")[LinkedIn]],
  ),
)

// One-page fit: slightly smaller type and tighter spacing than the academic CV.
// Delete these three lines to revert to the template defaults (11pt).
#set text(size: 10pt)
#set par(leading: 0.5em)
#set list(spacing: 0.55em)

= Summary
Second-year Computer Science Ph.D. student at UIUC, advised by Prof. Josep Torrellas. I work on microarchitecture for 3D-stacked CPUs, GPUs, and accelerators. Seeking a Summer 2027 computer architecture internship.

= Education
#edu(
  institution: "University of Illinois Urbana-Champaign",
  date: "Fall 2025 - Present",
  location: "Urbana, IL",
  degrees: (
    ("Ph.D.", "Computer Science"),
  ),
  mentor: ("Advisor", "Prof. Josep Torrellas"),
  gpa: "3.75/4.0"
)

#edu(
  institution: "University of Chile",
  date: "Fall 2023 - Spring 2024",
  location: "Santiago, Chile",
  degrees: (
    ("M.S.", "Computer Science"),
  ),
  gpa: "7.0/7.0",
)

#edu(
  institution: "University of Chile",
  date: "Fall 2018 - Fall 2022",
  location: "Santiago, Chile",
  degrees: (
    ("B.Eng.", "Computer Science and Engineering"),
  ),
  gpa: "6.4/7.0",
)

= Relevant Coursework
*Fall 2026:* CS598APE - Advanced Performance Engineering, CS598HSA - Hardware & Software for AI \
*Spring 2026:* CS533 - Parallel Computer Architecture, ECE425 - VLSI Design \
*Fall 2025:* CS433 - Computer System Organization, CS426 - Compiler Construction, CS484 - Parallel Programming

= Research Experience
#exp(
  institution: "I-acoma Group, UIUC",
  mentor: ("Advisor", "Prof. Josep Torrellas"),
  role: "Graduate Research Assistant",
  date: "August 2025 - Present",
  location: "Urbana, IL",
  details: [
    - Improving performance of distributed collectives on hopper-like GPGPU clusters through 3D NoCs. 
    - Contributing to a universal LLM accelerator that maps kernel sub-functions onto logic and memory chiplets.
  ]
)

#exp(
  institution: "Dept. of Electrical Engineering, University of Concepción",
  mentor: ("Advisor", "Prof. Luciano Radrigan"),
  role: "Research Assistant",
  date: "July 2022 - December 2024",
  location: "Concepción, Chile",
  details: [
  - Wrote C/C++ firmware for TinyML IoT nodes with network-aware switching between edge and cloud inference.
  ]
)

#exp(
  institution: "CLCERT Group, University of Chile",
  mentor: ("Advisor", "Prof. Alejandro Hevia"),
  role: "Research Assistant",
  date: "January 2022 - December 2024",
  location: "Santiago, Chile",
  details: [
  - Migrated a homomorphic encryption system from finite-field to elliptic curve cryptography, cutting computation cost and enabling distributed key generation to run on resource-constrained embedded devices.
  ]
)

#exp(
  institution: "AIO Team, INRIA",
  mentor: ("Advisor", "Prof. Thomas Watteyne"),
  role: "Research Intern",
  date: "January 2023 - April 2023",
  location: "Paris, France",
  details: [
    - Evaluated the performance and energy consumption of a satellite IoT module; published as a poster at IPSN '23.
  ]
)


= Technical Skills
#skills((
  ("Programming", (
    [C/C++],
    [CUDA],
    [Python],
    [Rust],
    [RISC-V],
    [GoLang],
    [Java],
    [Scala],
    [Bash],
  )),
  ("Software", (
    [Docker],
    [Git],
    [TensorFlow],
    [Pytorch],
    [LLVM IR],
    [MPI],
    [OpenMP],
    [Valgrind],
  )),
    ("Hardware", (
    [Vortex],
    [SystemVerilog],
    [Gem5],
    [Ramulator],
    [Virtuoso],
    [Innovus],
    [PrimePower],
    [DesignCompiler],
  )),
))

// NIC Chile internship (pentesting) omitted here: off-target for architecture roles.
// Restore from resume_long.typ if applying to hardware security positions.

= Publications
#pub(
  title: "Enhancing Predictive Maintenance in Mining Mobile Machinery through a TinyML-enabled Hierarchical Inference Network",
  author: 0,
  pub_authors: ("Raúl de la Fuente", "Luciano Radrigan", "Anibal S Morales"),
  venue: "IEEE Access",
  venue_id: "IEEE Access",
  url: "https://doi.org/10.1109/ACCESS.2025.3557405",
)

#pub(
  title: "Poster abstract: Hands-on Evaluation of Kinéis Satellite IoT Technology",
  author: 0,
  pub_authors: ("Raúl de la Fuente", "Thomas Watteyne"),
  venue: "Proceedings of the 22nd International Conference on Information Processing in Sensor Networks",
  venue_id: "IPSN '23",
  url: "https://doi.org/10.1145/3583120.3589837",
)

