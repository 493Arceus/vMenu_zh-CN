if not defined WEBHOOK_URL_TMP goto end

curl -s -o nul -F "file=@vMenu-%VERSION_NAME%.zip" -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "success=true&commit_id=%APPVEYOR_REPO_COMMIT:~0,7%&project_name=%APPVEYOR_PROJECT_NAME%&build_url=%APPVEYOR_URL%/project/%APPVEYOR_ACCOUNT_NAME%/%APPVEYOR_PROJECT_SLUG%/builds/%APPVEYOR_BUILD_ID%&author=Vespura&commit_url=https://github.com/%APPVEYOR_REPO_NAME%/commit/%APPVEYOR_REPO_COMMIT%&commit_message=%APPVEYOR_REPO_COMMIT_MESSAGE%&build_name=%APPVEYOR_JOB_NAME%-%APPVEYOR_JOB_NUMBER%" %WEBHOOK_URL_TMP%

:end