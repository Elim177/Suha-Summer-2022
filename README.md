# tf_api

## This branch includes
  - tf-api
    - Collects the tensorflow apis using docstringand formats them with their according name, description, and youtube link.
  
## Files/Folders in this branch
  - tf
    - folder containing all tensorflow markup file api descriptions found from tensorflow website
  - List_of_all_TF_API.csv
    - CSV file listing all tensorflow api names/symbols
  - List_of_all_TF_API.md
    - md file converted from List_of_all_TF_API.csv for the purpose of parsing using docstring to pull api descriptions from tensorflow site.
  - meta_yt_links.json
    - file used in front end branch to use youtube linka with tf api symbols
  - output100.csv
    - a sample file of the first few api symbols + youtube links
  - tf.md
    - an md file containing tf specific primary symbols such as modules, classes and functions pulled using docstring
  - to_json_from_tf_for_ps.py
    - creates a meta_primary_symbol.json file in the tf_frontend branch path (the path is specific to my personal directory). It saves the primary symbols of tf names, description, and youtube links into json file
  - to_json_from_tfmd.py
    - takes the tf.md file and converts it into a json file. The tf.md file has the api primary symbol names, descriptions, documentation
  - to_json_from_yt_link_csv.py
    - copied the csv file called output100.csv to a json file

## How to use the code in the branch
Make sure you have cloned and gotten access/ownership over the https://github.com/suhasid098/tf_apis repo just incase there are necessary files missing but all files should be in the https://github.com/suhasid098/tf_frontend repo.
