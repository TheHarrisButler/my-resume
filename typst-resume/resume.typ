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
          "+1 303-319-0118",
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
          "React, Next.js, Vite, ReactQuery",
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
          "Bundling",
          "Rollup, Webpack",
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
         entry(
          theme: aside-theme,
          "AI/ML",
          "GPT-4 API, GitHub Co-pilot",
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
        #v(4pt)
        #list(
          [
            Developed and maintained a greenfield shipping and logistics React component library built on top of our flagship shipping API platform with added data sharing and cache management via ReactQuery.
          ],
          [
            Refactored the projects build process by removing certain dependecies 
          ],
          [
            Tech lead of 2 engineers on developing an internal sales demo application built with React, TypeScript, and Next.js, enhancing our sales team process and improving conversion rates by 25%.
          ]
        )
      ],
    )
    entry(
      right: [*\@Glowstik* -- Denver, CO],
      "Oct 2022 - June 2023",
      "SWE Contract",
      [
        #v(4pt)
        #list(
          [
            Successfully migrated an existing vanilla CRA to Next.js and TypeScript.
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
      right: [*\@Auctane* -- Austin, TX],
      "June 2021 - Apr 2022",
      "Software Engineer L1",
      [
        #v(4pt)
        #list(
          [
            Developed and maintained dozens of core features in Typescript, React, and GraphQL across the platform. Deployed to 400,000+ users. 
          ],
          [
            Reduced the Cypress.js end-to-end test suite run times by parallelizing test runs in GitHub Actions—reduced test suite run time by 80%. 
          ],
          [
            Improved test coverage and robustness by mocking the projects most used API endpoints. 
          ]
        )
      ],
    )
    entry(
      right: [*\@Talent Reef* -- Denver, CO],
      "June 2019 - Aug 2019",
      "SWE Intern",
      [
        #v(4pt)
        #list(
          [
            Rotational internship between Tier II Technical Support, Engineering, Quality Assurance, and Product Management.
          ],
          [
            Increased productivity of the QA team by developing and implementing automated API tests using Java and Serenity BDD.
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
        #v(4pt)
        #list([
          Developed a Google Chrome extension with React and Typescript, allowing users to quickly and easily purchase shipping labels from anywhere online. Won the 2023 Auctane Engineering hackathon 
        ])
         
      ],
    )
    entry(
      "2022",
      "harrishbutler.com",
      [
        #v(4pt)
        #list([
          Rebuilt my website using React, Next.js, and TypeScript. The app is hosted with Fly.io and deployed via GitHub actions.
        ])
         
      ],
    )
    entry(
      "2021",
      "The Map Game",
      [
        #v(4pt)
        #list([
          A turn-based PvP guessing game where opponents send each other a location rendered as a Google Maps street view. The first one to guess five correct locations wins. Inspired by the popular GeoGuessr game and an exercise to learn more about building web sockets.
        ])
      ],
    )
  }
)