#import "template.typ": resume, contact, section, summary, entry, star

#show: resume.with(
  first-name: "Yao",
  last-name: "Meng",
  position: [Senior Software Development Engineer - Distributed Storage System],
  contacts: (
    contact("phone", "tel:+8615811556300", [(+86) 158-1155-6300]),
    contact("email", "mailto:mrcroxx.cs@gmail.com", [mrcroxx.cs\@gmail.com]),
    contact("home", "http://blog.mrcroxx.com", [blog.mrcroxx.com]),
    contact("github", "https://github.com/mrcroxx", [mrcroxx]),
    contact("linkedin", "https://www.linkedin.com/in/mrcroxx", [mrcroxx]),
    contact("twitter", "https://twitter.com/@CroxxMr", [\@CroxxMr]),
  ),
  date: "September 20, 2026",
)

#summary[
  Senior Software Engineer specializing in distributed storage systems and high-performance caching systems.

  Founder and maintainer of *Foyer* (1.6k #star), hybrid cache in Rust, used in *Apache OpenDAL*, *RisingWave*, *ChromaDB*, *SlateDB*, *ZeroFS*, etc.

  Active open-source contributor, contributed to *Apache OpenDAL*, *TiKV*, *Chroma*, *RisingWave*, *SlateDB*, etc.
]

#section("Education", gap: "compact")[
  #entry(
    title: [Beihang University],
    role: [M.S. in Computer Science and Engineering],
    location: [Beijing, China],
    date: [Sep. 2020 - Jan. 2023],
    body: [
      - GPA: 3.80/4.0
    ],
  )
  #entry(
    title: [Beihang University],
    role: [B.S. in Computer Science and Engineering],
    location: [Beijing, China],
    date: [Sep. 2016 - Jun. 2020],
    body: [
      - GPA: 3.72/4.0, Rank 6/157 (Top 4%); Outstanding Graduate (2 in 157).
    ],
  )
]

#section("Project", gap: "roomy")[
  #entry(
    title: [Foyer - Hybrid Cache Library in Rust],
    role: [Founder and Maintainer],
    location: link("https://github.com/foyer-rs/foyer"),
    date: [May. 2023 - now],
    body: [
      - Designed and built a production-ready hybrid (memory + disk) cache library in Rust, targeting cloud-native data infrastructure.
      - Achieved high performance via a plug-and-play modular architecture, replaceable algorithms and engines, and optimized concurrency.
      - Built with enterprise features such as rich observability, extensive configuration options, and broad ecosystem compatibility.
      - 1.6k #star, used by 100+ projects on Github, including *Apache OpenDAL*, *RisingWave*, *ChromaDB*, *SlateDB*, *ZeroFS*, *Percas*, etc.
      - A deep dive into Foyer: #link("https://blog.mrcroxx.com/posts/foyer-a-hybrid-cache-in-rust-past-present-and-future/")
    ],
  )
]

#section("Experience")[
  #entry(
    title: [RisingWave Labs],
    role: [Database Kernel Development Engineer - Rust],
    location: [Beijing, China],
    date: [Nov. 2021 - Mar. 2026],
    body: [
      - Early engineer at RisingWave, contributing from the ground up to the design and evolution of the core storage and streaming system.
      - Owned the design and implementation of the hybrid cache subsystem in RisingWave's storage engine.
      - Led optimization of S3-based LSM-tree storage engine read path, achieve 3x more throughput for join-heavy workload, reducing S3 read operations by 90% and overall storage cost by 45%, and optimized system stability.
    ],
  )
  #entry(
    title: [Chroma],
    role: [Part-time Consultation],
    location: [Remote],
    body: [
      - Provided design guidance on the hybrid cache system, integrated Foyer into Chroma, involved in debugging and technical support.
    ],
  )
  #entry(
    title: [PingCAP],
    role: [Distributed Storage System Development Intern - Rust],
    location: [Beijing, China],
    date: [Apr. 2021 - Nov. 2021],
    body: [
      - Optimized the write-ahead log (WAL) recovery path in TiDB/TiKV, achieving up to 10× faster recovery time.
      - Improved algorithms in the Raft-based key-value storage engine, reducing leader eviction latency by 2× under slow-follower scenarios.
      - Optimized the Raft log GC of the RocksDB-based WAL engine, reducing Raft log GC bandwidth usage by 5%–30% across different workloads.
      - Contributed to the maintenance of PingCAP's RocksDB fork and the Rust bindings used in TiKV.
    ],
  )
  #entry(
    title: [Bytedance],
    role: [Backend Development Intern - Go],
    location: [Beijing, China],
    date: [Oct. 2019 - Jan. 2020],
    body: [
      - Contributed to backend services and data infrastructure for a large-scale advertising recommendation system.
    ],
  )
]

#section("Presentation", gap: "compact")[
  #entry(
    title: [Apache Community Over Code Asia 2025],
    role: [Enhancing Performance and Reducing Cost for Object Store Access with Apache OpenDAL and Foyer],
    location: [Beijing],
    date: [Jul. 27, 2025],
  )
  #entry(
    title: [Rust China Conf 2024],
    role: [Foyer: Easily Enhance Your Cloud Data Engine with foyer Hybrid Cache],
    location: [Shanghai],
    date: [Sep. 07, 2024],
  )
]
