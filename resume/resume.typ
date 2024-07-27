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
          "JavaScript, TypeScript, Python, Bash",
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
          "API",
          "REST",
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
      "Awards and Achievements",
      {
        entry(
          "Student Athelete",
          none,
          [
            4 year lettermen on the UT Tyler Men's Golf Team
          ],
        )
      },
    )

  },
  main: {
     section(
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
                Spearheaded the development of a greenfield shipping and logistics React component library fully integrated with our flagship shipping API, reducing our partner's time to market from quarters to weeks. 
              ],
              [
                Acted as the technical liaison between internal sales and partner engineering teams; Led demo meetings to showcase product implementation, which resulted in an 80% conversion rate.
              ],
              [
                Led a team of 2 engineers to develop an internal product demo application using React, TypeScript, and Next.js, improving our sales team's process and boosting conversion rates, resulting in over \u{0024}500,000 in new deal value.
              ]
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
                Developed and maintained core features in our flagship white-labeled shipping solution, using TypeScript, React, and GraphQL. Deployed to over 400,000 users; It became one of the company's most-used products, generating over \u{0024}8 million YoY.
              ],
              [
                Improved QA efficiency by reducing Cypress.js end-to-end test suite run times by 85% through parallelization in GitHub Actions. 
              ],
              [
                Boosted our backend's test coverage and robustness by mocking the most frequently used REST API endpoints, ensuring higher reliability and performance.
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
                Successfully migrated a vanilla Create React App (CRA) to Next.js and TypeScript, enhancing performance and scalability.
              ],
              [
                Collaborated closely with developers and designers to ensure a seamless integration of Next.js and TypeScript into the existing codebase.
              ],
              [
                Improved the codebase's maintainability by aligning the project with clean architecture principles.
              ],
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
  },
)

#section(
  "Projects",
  {
    entry(
      "2023",
      "Shipmunk",
      [
        #list(
          [
            Developed a Google Chrome extension using React and TypeScript, enabling users to purchase shipping labels seamlessly from any website.
          ],
          [
            Won the 2023 Auctane Engineering Hackathon.
          ]
        )
         
      ],
    )
    entry(
      "2022",
      "harrishbutler.com",
      [
        #list([
          Built using React, Next.js, and TypeScript. Hosted on Fly.io with automated deployment via GitHub Actions.
        ])
         
      ],
    )
    entry(
      "2021",
      "The Map Game",
      [
        #list(
          [
            Developed a turn-based PvP guessing game using vanilla JavaScript, HTML, and CSS, 
            inspired by the popular GeoGuessr game.
          ],
          [
            Implemented real-time gameplay with web sockets, where players send each other Google Maps street views and compete to guess locations. The first to guess five correct locations wins.
          ])
      ],
    )
  }
)