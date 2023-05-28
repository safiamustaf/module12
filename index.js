const { prompt } = require("inquirer");
const db = require("./db/db");


function topLevelMenu() {
    prompt([
        {
            type: "list",
            name: "choice",
            message: "What would you like to do?",
            choices: [
                {
                    name: "View All Departments",
                    value: "VIEW_DEPARTMENTS"
                }
            
            ]}]).then(resp => {
                switch (resp.choice) {
                    case "VIEW_DEPARTMENTS":
                        ViewAllDepartments();
                        break;
                    default:
                        quitProgram();
                }
            })
        }


        function viewAllDepartments() {
            db.getAllDepartmentsFromDb()
              .then(([departments]) => {
                console.log("\n");
                console.table(departments);
              })
              .then(() => topLevelMenu());
          }

          function quitTheProgram() {
            process.exit();
          }