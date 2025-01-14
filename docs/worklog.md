<!-- <script src="https://gist.github.com/pierrejoubert73/902cc94d79424356a8d20be2b382e1ab.js"></script> -->

# Carolin Master Thesis Work Log

## 24.10.19

- fixed model figures in chapter 2
- wrote about ir tasks
- reordered sections about BLIRTs
- analyze data from dev-mails
- write about dev-mails validation
- thesis-finishing-timeplan
- prepare meeting with Moritz and Annibale

## 23.10.19

- make cleaner models for chapter 2
- partial page planning
- work in caro-review comments

## 22.10.19

- tried to do data analysis with ruby: bad idea. don't use badly documented things
- finally switched to python/pandas and have at least a few graphs now

## 21.10.19

- looked into results of sending mails to devs
- tried to data eval of big study in excel and numbers: oei it is horrible with multiline csv strings and their formulas
- corrected parts of the thesis

## many undocumented days again

## 11.10.19

- check survey gizmo fixes & send mail out for review
- go through output of eval runs to find errors
- some fixes for the evaluntion code
- read Moritz' Feedback
- review own thesis text on chapters 2-4

## 8. - 10.10.19

- write some things here and there
- literature research about CI and stuff in general for introduction claims
- start literature search for production log analysis
- struggle a lot with survey gizmo 
- anand's defense and talks

## 7.10.19

- write a huge load of mails to moritz
- correct toc & introduction to hand in for review
- try to fix super annoying survey gizmo csv upload things

## 2. - 6.10.19

- write introduction of thesis
- rework structure of thesis a few times
- copy over related work & write introduction text
- make explanatory pictures for models & evaluations
- include pictures for explanations & techniques in thesis
- write some parts about the data set collection

## 1.10.19

- masterplan for write up of thesis
- structure draft thesis
- structure draft paper
- read through old paper draft again
- checked that survey csv upload works

## 30.9.19

- send mails out to taico for review
- fill missing job_ids & mails
- finish keyword evaluation
- save all eval results to fine postion & format
- try sendding from carolin-brandt.de
- test pbe xml -> csv transformation
- start testrun of all evaluation
- mail: github-link for commit
- remove star *
- merge mails to multiple devs into one

## 25. - 29.9.19

- setup validation with sending mails to developers: mail template, data collecting to fill mail, survey gizmo
- write keyword extraction evaluation
- clean up result file structure & savepoints for all evaluation relevant extractions

## 24.9.19

- listen to talk about automatic refactorings and unit testability
- finish labeling & fixing all the examplesets
- trial presentation Taico

## 23.9.19

- labeled keywords & categories for 9 more languages
- fix whitespace in labels for various languages
- trial presentation Taico

## 20.9.19

- did presentation on retreat & discussed about it with Georgios and Andy

## 17.9.19

- insert skeleton code for keyword & category sampling
- sample for 6 languages, needed various whitespace fixes as well
- integrate keywords & categories in r exampleset parsing
- fix save path for evaluation results
- start on keyword evaluation code
- update presentation slides with Research Questions & practice presentation

## 16.9.19

- write example output & context presentation script

## more undocumented september days

## 6.9.19

- mounting folders in docker to write out results
- ran evaluation on all samples to get data about what xml escaping still needs to be done
- continued on sampling & validation overview and wrote down mTurk proposal
- setup dotfiles

## some september days undocumented

## 2.9.19

- continued with trying to dockerize evaluation: not sure if this was a good idea, R is horrible... though the best alternative would be to run them locally and then time measurements get unusable (prose has to be run on the server)
- try out to do only R docker image to run the evals separate
- labeled 22 more example sets (6 to go & fixing xml escaping stuff)

## 30.8.19

- start on dockerizing evaluation for the server
- label about 10 more example sets

## 29.8.19

- read online & some papers about mturk and using it for data collection / cs surveys
- talk to wouter about Server: got access to athens and munich
- looked at log datasets sent by Moritz

## 28.8.19

- Meeting Summary to Annibale
- Start scheduling meeting kw39
- Regenrate Eval files for recollected log samples

## 27.8.19

- more xml escaping fixes
- both pbe and ir tool handle filenames with slashes for saving results of evaluations
- try to make learning in prose iterative (not sure wether that worked...)
- unification tool / eval running script output intermediate results / progress now
- output eval results to csv
- save plots
- prepare Meeting with Moritz and Annibale

## 26.8.19

- recollect various files missed in data collection for BuildFailureReason
- handle parsing of special characters in example sets in pbe tool
- fix a lot of auto-format whitespace errors in already collected samples
- base evaluation on list of example sets
- remove log samples that are not useful for the evaluation / data set
- started on various xml escaping fixes for the C example sets
- started on overview of possible results of my work "which extraction is suitable when"
- document example sets still to be labeled

## 25.8.19

- labeled 8 more example sets

## 23.8.19

- check that plotting prose results still works
- improved some of the readmes
- more fixes for evaluation

## 22.8.19

- wrote / corrected / renamed various readmes for a bit more documentation (cause I had no idea how my evaluation worked anymore 😅)
- fix parsing of example set in R code (escaping special characters)
- correct some errors from unescaped quote characters in autogenerated example set skeletons

## 21.8.19

- report a bit to Moritz on what I did
- start scheduling next skype meeting
- label 9 example sets
- chat with Andy about PhD

## During the weeks in Germany

- generate skeletons for evaluation samples "BulidFailureReason"
- labeled around 25 example sets (about 86 in total to do, though some collected repos might not be usable for the evaluation)
- small fixes in data collection tool and clean collection for BulidFailureReason evaluation

<details>
  <summary>July</summary>

## 23.7.19

- Implemented:
  - keyword search
  - random baseline
  - manual regex extraction
- added all to unification tool
- expanded examples
- collapsible sections in readmes

## 22.7.19

- made PBE and IR analysis quiet / only output result
- integrated both analyses into unification tool, analyze runs now with both
- updated readmes with running examples + output
- looked into Azure DevOps test result extraction
- answered Moritz

## 19.7.19

- Meeting with Annibale about IR parameters and review last meeting with Moritz
- Collected Requirements for research prototype in findind a clean answer to the "test faliure extraction tool" questions
- Started on unifying API for extraction tools
- answering Moritz

## 18.9.19

- Cleaned up R implementation
- Fixed plots

## 17.7.19

- Implemented Evaluation infrastructure (like in C# tool already) around R extraction
- collect results of R evaluation for same plotting as C# results

## 16.7.19

- Follow-up chat with Andy
- Implemented simple similarity calculation + "extraction" logic with `text2vec` and for now cosine similarity

## 15.7.19

- Generating dtms and trying to figure out LDA stuff
- Decision to first to simple similarity with a simpler tutorial than Annibales tool
- Read docs of `text2vec` R text mining library

## 11.7.19 - 14.7.19

- writing and correcting PhD application
- figuring out text mining in R

## 10.7.19

- IR comparison:
  - splitting log files into lines
  - writing lines into separate files
- Writing PhD application for TestShift

## 9.7.19

- start on IR comparison implementation
  - set up new project & fix broken rstudio installation
  - parsing exampleset definition xml files
  - reading log files

## 8.7.19

- moving on to `ggplot2` and finally having some nice graphs some hours later
- cleaned up existing examplesets:
  - filenames now identify chronological ordering
  - remove unused samples
  - update documentation

## 5.7.19

- started looking into R for parsing + plotting my results, throwing a lot of square brackets around
- collecting documents for phd Application

## 4.7.19

- extended the android-failure example collection
- ran evaluation with manual & random example selection on android-failure

## 3.7.19

- read Moritz' paper review
- plan meeting with Annibale and Moritz
- test evaluation implementation on existing examplesets

## 2.7.19

- finish prose evaluation implementation
- collect logs from repos to use for evaluation samples

## 1.7.19

- continue on evaluation implementation
- meeting with Andy about PhD positions within TestShift
- phd meeting review with Michi

</details>

<details>
  <summary>June</summary>

## 28.6.19

- get Annibales tool for IR to run
- collect fixes in pull request

## 27.6.19

- update data collection ruby tool for nicer single repo collection
- prose tool: start on iterative learning for evaluation

## 26.6.19

- setup R to run Annibales tool
- design second model of meta model from buildlog analysis results


## 25.6.19

- update munich supervisors
- read Taico's master thesis

## 24.6.19

- summarizing results from buildlog analysis
- selecting repositories for evaluation samples
- setup github pages

## 23.6.19

- keep on reading buildlogs

## 21.6.19

- Meeting with Annibale: feedback on data collection & paper introduction
- learning about Annibale's R tool for IR

## 20.6.19

- readind broad collected buildlogs

## 19.6.19

- Programming Languages group PhD defense

## 18.6.19

- Timing output of C# tool
- clean up remaining output of C# tool

## 17.6.19

- send paper to Moritz
- talk to Annibale about Literature research
- go over todo list and tools, collect plans on following implementation
- clean up output of data collection

## 16.6.19

- correct write outs from yesterday
- type plans from yesterday & extend
- do literature research on paragraph stuff in IR

## 15.6.19

- write out introduction + most related work
- plan data collection section and evaluation + tool description

## 14.6.19

- throw away writing from yesterday
- color scheme for nice semantic notes in paper
- redo introduction & related work bullet points

## 13.6.19

- read up on PROSE internal learning / synthesis algorithm to explain to Annibale
- not that successful writing in the afternoon

## 6.6.19 - 12.6.19

- continuing on pbe extraction tool: configuration of examples through xml program files, normalizing line endings
- adding log samples to repo
- writing overview of extraction possibilities
- finish data collection tools: automatically determine repos to analyze and download & save their buildlogs by type
- describe data collection
- update all the readmes
- listen to master thesis defence about gamifying static analysis tools

## 5.6.19

- feedback and paper discussion with Moritz
- update ghtorrent query for popular repos in various languages & more continuation on data collection
- writing half of iteration 1 for introdcution & related work

## 4.6.19

- add bigquery library to

## 3.6.19

- reading paper about mining buildlogs
- update to moritz and annibale on mattermost
- morning paper about ci for ml models

</details>

<details>
  <summary>May</summary>

## 31.5.19

- struggle with setting up ruby dev environment
- queriying travis for repos
- learning that travis ruby library is broken for logs xD
- looking into rest api of travis again

## 29.5.19

- query ghtorrent in bigquery for popular languages and projects
- read up on travis api 3 for collecting buildlogs
- ruby tutorial (decide to write travis log collection in ruby instead of doing it by hand)
- empty locker xD and review Martijns requirements

## 28.5.19

- reviewed rw points and sent them to Moritz
- generic hell to support sequence programs in extraction

## 27.5.19

- shortened rw points for paper
- screened buildlogs and plannend data collection for extraction examples

## 24.5.19

- Wrote summary about IR research & literature for Annibale and Moritz
- Wrote bullet points for related work and background of paper (they got so long that I will probably move them to the thesis and shorten / redo them for the paper)

## 22.5.19

- Investigated incorporating common IR / text mining techniques into our approach


## 21.5.19

- Added Keywords to new IR papers
- Summarized read papers on IR


## 20.5.19

- Read paper about essential aspects in semi-structured data
- Look for newer IR summaries
- Failed at reading that awful IR from database summary paper
- Read "A Brief Survey of Text Mining: Classification, Clusterind and Extraction Techniques"
- Answered Mail to Munich Supervisor

## 17.5.17

- Classify new Literature
- Read "Information extraction for semi-structured documents"
- Read Annibales Summary of IR

## 16.5.19

- Prepare Meeting
- Meeting with Moritz and Annibale
- Collect Literature from Moritz & put into Bibdesk

## 15.5.19

- Implement Analyze() and output printing for corresponding results
- Implement Folder processing

## 14.5.19

- Implement Command Line Arguments

## 13.5.19

- Implement AnalysisProgram, adjust AnalysisSession

## 12.5.19

- Implement class outline

## 9.5.19

- Formulate requirements for pbe tool
- Start on high-level design

## 8.5.19

- Read a lot of buildlogs
- Came up with first version of meta-model
- Brainstormed study idea for Dereck

## 7.5.19

- Wrote to munich supervisors about changes topic and update
- Collected various Bulidlogs from TravisTorrent

## 6.5.19

- Put all the papers into bibdesk
- Add keywords to bibdesk papers
- Add references to paper outlines

## 3.5.19

- Write outline for paper & related work
- Read "A tale of CI build failures: An open source and a financial organization perspective"

## 2.5.19

- Got paper & thesis template to compile

## 1.5.19

- Prepared meeting with Moritz
- Discussed with Moritz about "final" study idea & mid-term ToDos
- Import paper & thesis template

</details>

<details>
  <summary>April</summary>

## 30.4.19

- Collected more papers from references / recommendations & skimmed & prioritized
- Discussed with Sebi about remaining study ideas & refined
- Read RE with GP machines-humans 1-0 paper

## 29.4.19

- Created & ran simple benchmark on prose extraction

## 28.4.19

- Read google build errors paper
- Read interaction models for PBE paper

## 26.4.19

- Read build log summarization paper → sooo many ideas 😊
- Read self-found papers on RE learning with GP

## 25.4.19

- Read prose paper on text extraction

## 24.4.19

- Discussed status & implementation plans / study plans / research contribution with Annibale & Moritz
- Planned & summarized meeting
- Read "Oops my tests broke the build"

## 23.4.19

- Added separating examples
- Tested saving and loading
- Listened to return2corp talk
- Started on literature search

## 18.4.19

- Completed refactoring prototype
- Enabled saving and loading exampleset

## 17.4.19

- Read on Prose DSLs & their capabilities
- Wrote Wrapper for Prose Text Extraction Session

## 16.4.19

- Wrote with Alberto & Anand about ending supervision
- Collected & activated Campus Card
- Coded Example System for Text extraction from files

## 15.4.19

- Meeting with Moritz about PBE topic
- Read Prose Documentation / Tutorial
- Talked to Annibale about possible Supervision
- Downloaded Example Repo & ran some examples

## 12.4.19

- Wrote proposal for "Analyzing Buildlogs using PBE"
- Applied for Campus Card
- Talked to Arie during Lunch
- Extended other proposals

## 11.4.19

- Read on Moritz' proposed topic
- Analyzed & discussed Anand's additional examples & pointers on stream difficulties
- Started on topic proposals

## 10.4.19

- JDK compiles ✌🏼
- Wrote example streams in order to try to narrow topic
- Read "Closures for Java v0.6", proposals about how to improve lambdas most importantly with throwing exceptions & giving control flow out of lambdas
- Sorted Literature into Bibdesk
- Consolidated results from last week & prepared Meeting with supervisors

## 9.4.19

- Watched Andrew Ko's Talk about whyline & learnings from that project
- Read "Debugging Reinvented: Asking and Answering Why and Why Not Questions about Program Behavior". (mostly technical details about the realisation of the whyline tool)
- Read second whyline Paper (interrogative debugging)
- Discussed Milestones with Moritz

## 8.4.19

- Chatted with Dereck about JDK compilation & issues
- Looked into mercurial
- Cloned jdk repository & tried to compile it
- Read more about lambdas

## 7.4.19

- Read Maurice Naftalin's Lambda FAQ (http://www.lambdafaq.org/)
- Start reading more online resources about lambdas, stacktraces
- Read "whats-wrong-java-8-part-I to V"

## 6.4.19

- Filtered through References of Moritz' & Reactive Programm Debugging Paper → Collected at lot of Papers to assess / read

## 5.4.19

- Listened to Software Architecture Presentations
- Researched reference managing softwares: Installed BibDesk & JabRef
- Filled out forms for TUD Guest Application

## 3.4.19

- Read thesisguide.org
- Said hello to even more people
- Review time plan with Moritz
- Read "How to Read a Paper"
- Skim Moritz's paper on debugging

## 2.4.19

- Got a mattermost account
- Created time plan
- Put me on the website as a guest
- Said hello to a lot of people

</details>
