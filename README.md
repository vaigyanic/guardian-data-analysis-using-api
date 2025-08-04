



# 📰 Guardian Data Analysis (using api extraction)

This project extracts and analyzes news article metadata from **The Guardian Open Platform**. The goal is to simplify and structure complex nested data — including contributor information, tags, publication details — and store it in a relational format using **PostgreSQL**.

---

## 📌 Project Highlights

✅ Guardian Data Project Summary (Key Steps)
📥 Fetched article data from The Guardian Open Platform API (JSON format)

🧹 Cleaned and formatted the raw data using Python and pandas

📦 Loaded structured data into a PostgreSQL database (guardian_articles table)

🔍 Explored nested fields such as tags (contributors, keywords) and fields.* (article metadata)

🧠 Used UNNEST() and jsonb_array_elements() to flatten nested tags into individual rows

🔗 Joined article metadata with contributor tag values using SQL

🧾 Extracted author names, section details, word counts, and publication timestamps

📤 Exported cleaned data for downstream use (e.g., dashboards, reports, machine learning)

⚙️ Built and tested SQL queries for tag filtering, author attribution, and publication analysis

📝 Documented the workflow in SQL and Python and prepared the repo for GitHub sharing


---








