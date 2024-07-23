# OpenArmor.github.io

These are the files for the official OpenArmor Project website. They are built automatically 
from the OpenArmor/OpenArmor-docs repo by Travis when pull requests are made for that repo 
after the website source files are updated.  **DO NOT MAKE CHANGES TO FILES IN THIS REPO.**
If you want to update the website, edit the files in OpenArmor/OpenArmor-docs and let Travis do the
rest.

## Requirements

The source website files in OpenArmor/OpenArmor-docs consist of Sphinx and HTML template files, 
so you require Python and sphinx-build to update the website. In most cases you will 
need to modify the website when a new OpenArmor release has been created or a blog entry is 
added.

## Updating the Downloads page

1. Fork the OpenArmor/OpenArmor-docs repo
2. cd into the OpenArmor-docs directory
3. Edit the downloads.rst file
4. Run *make html*.
5. Open the _build/html/index.html file in a browser.
6. Check to see the test wbesite looks OK.
7. Repeat steps 3-6 until you have it the way you want.
8. Push you changes to your fork of OpenArmor-docs.
9. Create a pull request for your changes.

## Adding a blog entry

1. Fork the OpenArmor/OpenArmor-docs repo
2. cd into the OpenArmor-docs directory
3. Add your blog entry to the blog/posts directory. The naming convention is *YYYY-MM-DD-title.rst*.
4. Add the following code to your blank file: 
    ```
    .. post:: MMM DD, YYYY
      :tags: 'your tags'
      :category: 'your categories'
      :author: 'your name'
      
   ======================
   'your title goes here'
   ======================
   
   'your content goes here'
    ```
5. Put your date, tags, categories, and name in the corresponding fields.
6. Add a title below this section that has a row of '=' before and after the title that are the same charter length as the title.
7. Add and edit your content below the title.
8. When you are done writing, run *make html*.
9. Open the _build/html/index.html file in a browser.
10. Check to see the test wbesite looks OK.
11. Repeat steps 7-10 until you have it the way you want.
12. Push your changes to your fork of OpenArmor-docs.
13. Create a pull request for your changes.
