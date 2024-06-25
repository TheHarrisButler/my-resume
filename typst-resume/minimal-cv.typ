#import "./package.typ": *

#let aside-theme = (
  gutter-size: 0.5fr
)

#show: cv.with(
  theme: (),
  title: "Harris Butler",
  subtitle: "Software Engineer",
  aside: {
    section(
      "Contact",
      {
        entry(
          "Home",
          "Austin, TX",
          none,
        )
        entry(
          "Phone",
          link("https://wa.me/85212345678", "+1 303-319-0118"),
          none,
        )
        entry(
          "Email",
          link("mailto:hb@harrishbutler.com", "hb@harrishbutler.com"),
          none,
        )
        entry("Website", link("harrishbutler.com", "harrishbutler.com"), none)
      },
    )

    section(
      "Technology Stack",
      {
        entry(
          theme: aside-theme,
          "Languages",
          "JavaScript, TypeScript, Node.js, Python",
          []
        )
        entry(
          theme: aside-theme,
          "Web",
          "React, Next.js, Vite",
          [],
        )
        entry(
          theme: aside-theme,
          "Testing",
          "React Testing Library, Jest, Cypress",
          [],
        )
        entry(
          theme: aside-theme,
          "DBMS",
          "PostgreSQL",
          [],
        )
        entry(
          theme: aside-theme,
          "CI/CD",
          "GitHub Actions",
          [],
        )
        entry(
          theme: aside-theme,
          "Version Control",
          "Git",
          [],
        )
        entry(
          theme: aside-theme,
          "Hosting",
          "Fly.io, AWS",
          [],
        )
      },
    )

    section(
      "Education",
      {
        entry(
          theme: (),
          "2016 - 2021",
          "The University of Texas at Tyler",
          [BS in Computer Science, Minor in Mathematics],
        )
      }
    )

    section(
      "Extracurricular Activities",
      {
        entry(
          "Culture",
          none,
          [Cooking, History, Reading],
        )
        entry(
          "Sport",
          none,
          [Golf, Running],
        )
      },
    )

     section(
      "Awards and Achievements",
      {
        entry(
          "Student Athelete",
          none,
          [
            4 year lettermen on the UT Tyler Men's Golf Team, 2018 Champions of the American Southwest Conference
          ],
        )
      },
    )

  }
)

#section(
  "Professional Experience",
  {
    entry(
      right: [*\@Auctane* – Austin, TX],
      "Apr 2022 - Present",
      "Software Engineer L2",
      [
        #par(lorem(12))
        #list(
          [
            Built and maintained a client-facing component library with React/TypeScript, a crucial step in streamlining our partner's development of their in-house shipping solution.
          ],
          [
            Built and maintained a JavaScript library providing React bindings to a REST API client with added data sharing and cache management via ReactQuery.
          ],
          [
            Tech lead of 2 engineers on developing an internal sales demo application built with React/TypeScript/Node.js, enhancing our sales team process and improving conversion rates by 25%.
          ]
        )
      ],
    )
    entry(
      right: [*\@Auctane* -- Austin, TX],
      "June 2021 - Apr 2022",
      "Software Engineer L1",
      [
        #par(lorem(12))
        #list(
          [
            Developed and maintained a white-labeled shipping solution for a high-profile partner using React, TypeScript, and GraphQL. Successfully scaled the app to a user base of over 500,000.
          ],
          lorem(7),
        )
      ],
    )
    entry(
      right: [*\@Glowstik* -- Denver, CO],
      "Oct 2022 - June 2023",
      "Software Engineer Contract ",
      [
        #par(lorem(12))
        #list(
          [
            Successfully migrated an existing app from a vanilla JavaScript and React to Next.js and TypeScript.
          ],
          [
            Collaborated closely with developers and designers to ensure seamless integration of Next.js and TypeScript into the existing codebase.
          ],
          [
            Aligned the project with better architectural standards(clean architecture) to ensure the codebase's maintainability.
          ],
        )
      ],
    )
    entry(
      right: [*\@Talent Reef* -- Denver, CO],
      "June 2019 - Aug 2019",
      "SWE Intern",
      [
        #par(
          [
            Rotational internship between Tier II Technical Support, Engineering, Quality Assurance, and Product Management.
          ]
        )
        #list(
          [
            Increased productivity of the quality assurance team by developing and implementing automated API tests using Java and Serenity BDD.
          ]
        )
      ],
    )
  },
)

#section(
  "Projects",
  {
    entry(
      "2023",
      "Shipmunk",
      [
         #par(lorem(12))
      ],
    )
    entry(
      "2022",
      "harrishbutler.com",
      [
         #par(lorem(12))
      ],
    )
    entry(
      "2021",
      "The Map Game",
      [
         #par(lorem(12))
      ],
    )
  }
)