section_order <- c("Project Organization", "Literate Programming", "Version Control", "Programming", "Environment Management")

motivation <- tibble::tribble(
  ~`Analysis Feature`, ~`Opinionated Approach`, ~`Question Addressed`, ~Tool, ~Section,
  "Reproducible and Auditable", "Executable analysis scripts", "Can you re-run the analysis and get the same results?", "Code first", "Project Organization",
  "Reproducible and Auditable", "Defined dependencies", "If an external library you’re using is updated, can you still reproduce your original results?", "library(renv)", "Environment Management",
  "Reproducible and Auditable", "Watchers for changed code and data", "If you change code, do you know which downstream code need to be re-executed?", "library(targets)", NA,
  "Reproducible and Auditable", "Watchers for changed code and data", "If the data or code change but the analysis is not re-executed, will your analysis reflect that it is out-of-date?", "library(targets)", NA,
  "Reproducible and Auditable", "Version control (individual)", "Can you re-run your analysis with new data and compare it to previous results?", "Git", "Version Control",
  "Reproducible and Auditable", "Version control (individual)", "Can you surface the code changes that resulted in a different analysis results?", "Git", "Version Control",
  "Reproducible and Auditable", "Literate programming", "Can a second analyst easily understand your code?", "Quarto", "Literate Programming",
  "Accurate Code", "Modular, tested, code", "Can you re-use logic in different parts of the analysis?", "Well-tested functions", "Programming",
  "Accurate Code", "Modular, tested, code", "If you decide to change logic, can you change it in just one place?", "Well-tested functions", "Programming",
  "Accurate Code", "Modular, tested, code", "If your code is not performing as expected, will you know?", "Well-tested functions", "Programming",
  "Accurate Code", "Assertive testing of data, assumptions, and results", "If your data are corrupted, do you notice?", "library(assertr)", "Programming",
  "Accurate Code", "Code review", "If you make a mistake in your code, will someone notice it?", "GitHub", "Version Control",
  "Accurate Code", "Code review", "If you are not using efficient code, will you be able to identify it?", "library(microbenchmark)", NA,
  "Collaborative", "Version control (collaborative)", "Can a second analyst easily contribute code to the analysis?", "GitHub", "Version Control",
  "Collaborative", "Version control (collaborative)", "If two analysts are developing code simultaneously, can they easily combine them?", "GitHub", "Version Control",
  "Collaborative", "Version control (collaborative)", "Can you easily track next steps in your analysis?", "GitHub", "Version Control",
  "Collaborative", "Version control (collaborative)", "Can your collaborators make requests outside of meetings or email?", "GitHub", "Version Control"
) |>
  mutate(Section = factor(Section, levels = section_order))



