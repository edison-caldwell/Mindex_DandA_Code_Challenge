# Mindex D&A Code Challenge

## Scope
- retrieving files from an AWS environment
- performing transformations and joins on the data, and storing them in a database. 
- query and execute it against the database.

## Requirements
1. Use the boto3 library to configure access to a Mindex AWS S3 bucket
- access key ID: REDACTED
- secret access key: REDACTED
  
2. Use given credentials to download the following four CSV files from the ‘BUCKET-NAME-REDACTED’ S3 bucket. This data represents the results of the Bengals 2021 NFL Season and the stats of the team’s top 3 receivers.
- bengals.csv
- boyd_receiving.csv
- chase_receiving.csv
- higgins_receiving.csv
  
3. Use the pandas library to load each CSV into its own dataframe.
  
4. Join/Merge all of the dataframes together to display one global table that shows
the three different receiver’s yards and touchdown (TD) data as well as every
game result. Be sure to include Opponent, Location, and Result fields from the
bengals.csv file.
- Make any changes necessary to successfully merge/join the dataframes.
  
5. Replace the ‘1.0’ or ‘0.0’ values in the Result field to display ‘Win’ or ‘Loss’, respectively.
  
6. Write the dataframe to a postgresql DB (credentials below). A username,
password, and table name have already been created with your name. There are
several options you can use: SQLAlchemy, psycopg2, Pandas. We encourage you to use whichever you find most suitable just note that you may need to install additional Python packages.

7. Set up a connection to view the database using DBeaver and ensure all relevant
data is present. Write a SQL Query to show the total yards each receiver had
throughout the season as well as the team's record displayed as: “# of Wins - #
of Losses”. Your query should generate the following view:
8. Make one final commit of your Jupyter Notebook and your SQL Code to your
public Github Repo.

## Access
The implementation requires the user to set environment variables for access to the S3 datastore. 
``
export AWS_ACCESS_KEY_ID=your_access_key_id
export AWS_SECRET_ACCESS_KEY=your_secret_access_key
``

For Linux/macOS please update your shell profile, for Windows users please set the environment variables through the System Properties or via Powershell commands. 
``
$env:AWS_ACCESS_KEY_ID = "your_access_key_id"
$env:AWS_SECRET_ACCESS_KEY = "your_secret_access_key"
``
Make sure to replace "your_access_key_id" and "your_secret_access_key" with your actual AWS access key ID and secret access key.

These environment variables will be set for the current PowerShell session. If you want to make them persistent across sessions, you can use the [System.Environment]::SetEnvironmentVariable method with the -User or -Machine scope, depending on whether you want them to be user-specific or system-wide. Here's an example for user-specific persistence:

``
[System.Environment]::SetEnvironmentVariable("AWS_ACCESS_KEY_ID", "your_access_key_id", [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("AWS_SECRET_ACCESS_KEY", "your_secret_access_key", [System.EnvironmentVariableTarget]::User)
``