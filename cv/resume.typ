#import "template.typ": *

#show: resume.with(
  author: "Raúl de la Fuente",
  location: "Urbana, IL",
  lastupdated: "2025-12-10",
  contacts: (
    [#link("mailto:rid2@illinois.edu")[Email]],
    [#link("https://rdelaf.nand.cl")[Website]],
    [#link("https://github.com/lomolisso")[GitHub]],
    [#link("https://www.linkedin.com/in/rdelaf-armijo/")[LinkedIn]],
  ),
  // footer: [#align(center)[#emph[References available on request]]]
)


= Summary
// Co-optimization of CPU, GPU and accelerator microarchitecture and 3D VLSI processes.
I am a first-year Computer Science Ph.D. student at the University of Illinois Urbana-Champaign. My research interests lie at the intersection of microarchitecture and 3D VLSI integration. I am currently exploring System-Technology Co-Optimization (STCO) methodologies to design next-generation heterogeneous systems—including CPUs, GPUs, and accelerators—that leverage logic-on-logic stacking enabled by CMOS 2.0 technology. 


= Education
#edu(
  institution: "University of Illinois Urbana-Champaign",
  date: "Fall 2025 - Present",
  location: "Urbana, IL",
  degrees: (
    ("Ph.D.", "Computer Science"),
  ),
    mentor: ("Advisor", "Prof. Josep Torrellas"),
)

#edu(
  institution: "University of Chile",
  date: "Fall 2023 - Spring 2024",
  location: "Santiago, Chile",
  degrees: (
    ("M.S.", "Computer Science"),
  ),
  gpa: "7.0/7.0",
    mentor: ("Advisors", "Prof. Alejandro Hevia and Prof. Luciano Radrigan"),
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
*Spring 2026:* CS 533 - Parallel Computer Architecture, ECE 425 - VLSI Design \
*Fall 2025:* CS 433 - Computer System Organization, CS 426 - Compiler Construction, CS 484 - Parallel Programming

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

= Research Experience

#exp(
  institution: "I-acoma Group, UIUC",
  mentor: ("Advisor", "Prof. Josep Torrellas"),
  role: "Graduate Research Assistant",
  date: "August 2025 - Present",
  location: "Urbana, IL",
  details: [
    - Conducting literature review on state-of-the-art 3D VLSI integration and STCO, focusing on microarchitectural co-design methodologies for CMOS 2.0 implementations.
  ]
)

#exp(
  institution: "AIO Team, INRIA",
  mentor: ("Advisor", "Prof. Thomas Watteyne"),
  role: "Research Intern",
  date: "January 2023 - April 2023",
  location: "Paris, France",
  details: [
    - Deployed a low-power mesh IoT network based on Dust Networks' SmartMesh IP technology for environmental monitoring in urban areas.
    - Conducted a hands-on evaluation of a state-of-the-art satellite communication module for IoT applications, assessing its performance and energy efficiency.
  ]
)

#exp(
  institution: "Dept. of Electrical Engineering, University of Concepción",
  mentor: ("Advisor", "Prof. Luciano Radrigan"),
  role: "Research Assistant",
  date: "July 2022 - December 2024",
  location: "Concepción, Chile",
  details: [
    - Deployed a cyber-physical system for real-time monitoring of industrial processes using on-device machine learning for anomaly detection and failure prediction.
    - Mainly responsible for: (i) Implementing the nodes' firmware in C/C++ , (ii) Designing and optimizing neural networks for embedded devices, and (iii) Conceptualizing an algorithm to dynamically switch between cloud and edge inference based on network conditions.
    
  ]
)

#exp(
  institution: "CLCERT Group, University of Chile",
  mentor: ("Advisor", "Prof. Alejandro Hevia"),
  role: "Research Assistant",
  project: "Applied Cryptography and Cybersecurity Lab at University of Chile",
  date: "January 2022 - December 2024",
  location: "Santiago, Chile",
  details: [
    - Contributed to the Psifos voting system, leveraging homomorphic encryption and zero-knowledge proofs to ensure secure and verifiable electronic elections.
    - Migrated the system from traditional finite-field cryptography to elliptic curve cryptography, enhancing security and computational efficiency.
    - Optimized the distributed key generation protocol used by election trustees to reduce computational overhead and enable participation from resource-constrained embedded devices.
  ]
)

#exp(
  institution: "NIC Chile Research Labs",
  mentor: ("Mentor", "Eduardo Riveros"),
  role: "Research Intern",
  date: "January 2021 - March 2021",
  location: "Santiago, Chile",
  details: [
    - Pentested the internal networks of NIC Chile and the Faculty of Physical and Mathematical Sciences at the University of Chile, identifying and reporting critical vulnerabilities.
    - Developed a plugin for the Nmap network scanner to identify vulnerable IoT devices within nested networks, enabling automated scanning and reporting for security audits.
  ]
)

= Activities
#act(
  period: "November'24",
  act_content: "Presented talk 'Enhancing Predictive Maintenance in Mining Mobile Machinery through a TinyML-enabled Hierarchical Inference Network' at the CS Master's Seminar, University of Chile."
)
#act(
  period: "2023 - 2024",
  act_content: "Served as Teaching Assistant for both the Internet of Things Systems Design and Web Application Development courses at University of Chile."
)
#act(
  period: "May'23",
  act_content: "Presented the poster 'Hands-on Evaluation of Kinéis Satellite IoT Technology' at IPSN '23, San Antonio, TX."
)
#act(
  period: "January'23",
  act_content: "Assisted to the OpenSwarm project launch event at INRIA, Paris, France."
)
#act(
  period: "2022",
  act_content: "Participated in over 250 elections powered by the Psifos voting system, working with both internal departments of the University of Chile and external organizations."
)
#act(
  period: "2021",
  act_content: "Served as Teaching Assistant for the Systems Programming course at University of Chile."
)

= Awards
- Recipient of the Master's in CS Scholarship from the University of Chile for the academic years 2023-2024.
- Recipient of the Academic Excellence Award from the University of Chile for the years 2018-2022.

= Technical Skills
#skills((
  ("Hardware", (
    [SystemVerilog],
    [Vivado],
    [Gem5],
    [Ramulator],
    [McPAT],
    [ESP32],
    [nRF52],
    [Raspberry Pi],
  )),
  ("Programming", (
    [C/C++],
    [Python],
    [Rust],
    [RISC-V],
    [GoLang],
    [Java],
    [Scala],
  )),
    ("Software", (
    [Docker],
    [Bash],
    [Git],
    [TensorFlow],
    [Pytorch],
    [LLVM IR],
    [MPI],
    [OpenMP],
    [Valgrind],
  )),
))