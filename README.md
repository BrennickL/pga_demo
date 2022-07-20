## Notes to Reviewers

The following notes are an evaluation of where the project stands at the moment.
Admittedly, it is not complete, though the ground work has been laid. 

## how to test
- Run the server on port 3001. If you want to use 3000, update the curl scripts accordingly
- You'll also need to have `postgresql` installed
- Ensure you have `jq` installed for displaying formatted JSON in the console, see Curl scripts
- Curl was used to test/ping the endpoints during development
- JSON files were created for use with Curl for testing

### What can be improved?
- Authentication
- Forget about most of the controllers and focus on creating a Score card from Faker example data
- Better error handling. This can be added to the `application_controller`
- Better placement of the `allowance` field. Possible it's own table depending of whether or not historical data is stored
- Better Seed data. Data specific to Score card generation
- I'm sure there are at least a dozen other aspects that I'm currently overlooking.. It's a start.. Not a polished product..
