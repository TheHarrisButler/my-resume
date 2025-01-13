#import "./package.typ": *

#let aside-theme = (
  gutter-size: 0.5fr
)

#show: cv.with(
  theme: (),
  title: "Harris Butler",
  subtitle: "Senior Software Engineer",
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
        heading(
          level: 2,
          context {
            set text(fill: text.fill.darken(40%))
            "The University of Texas at Tyler"
          }
        )
        
        set block(below: 4pt)
        "BS in Computer Science, Minor in Mathematics"
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
          "Oct 2024 - Present",
          "Software Engineer L3",
          [
            #v(4pt)
            #list(
              [
                Drove the vision and engineering for large-scale product initiatives to enhance architecture and user experience of our core products.
              ],
              [
                Established myself as a technical leader and mentor, providing guidance and support to other engineers on the team.
              ],
              [
                Collaborated cross-functionally to improve developer experience for new customers.
              ]
            )
          ],
        )

        entry(
          right: [*\@Auctane* – Austin, TX],
          "Apr 2022 -  Oct 2024",
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
                Improved CI/CD efficiency by reducing Cypress.js end-to-end test suite run times by 85% through parallelizing test scripts in GitHub Actions.
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
      "2024",
      "Fielding-AI",
      [
        #list([
          An interactive, AI-powered dynamicly generated web app to demonstrate RESTful architecture principles. Inspired by Roy Fielding's original HATEOAS (Hypermedia as the Engine of Application State) disertation.
        ])
      ],
    )
    entry(
      "2023",
      "Shipmunk",
      [
        #list(
          [
            Developed a Google Chrome extension using React and TypeScript, enabling users to purchase shipping labels seamlessly from any website. Won the 2023 Auctane Engineering Hackathon.
          ]
        )
         
      ],
    )
  }
)