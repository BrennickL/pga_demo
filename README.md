# Instructions for Template ROR API

- GitHub only lets you fork a repo once, so, if you want to make more than one copy of a project
  here's how you can do it. Useful for starter code.

  - Create a new empty folder for your project and initialize git
    ```sh
    cd where-you-keep-your-projects
    mkdir your-project-name
    cd your-project-name
    git init
    ```

  - "Pull" the repo you want to copy:
    ```sh
    # git url is the same as the clone URL
    git pull git-url-of-the-repo-you-want-to-copy
    ```

  - Create a **new repository** for your project on GitHub.
    ```sh
    git remote add origin git-url-of-the-new-repo-you-created
    ```
  - Push your code to the new repository you just created
    ```
    git push -u origin master
    ```

[How to Copy a GitHub Repo without Forking](https://gist.githubusercontent.com/natedana/cc71d496b611e70673cab5e8f5a78485/raw/57683ee760b0fc0b8c4e9c8a85f54bab46395239/copy-repo.md)
