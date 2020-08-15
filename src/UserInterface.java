

import java.sql.SQLException;
import java.util.Scanner;

    public class UserInterface {
        boolean goOn = true;

        public UserInterface(SQL sql) throws SQLException {


            System.out.println("\n_____WELCOME TO THE SQL SCHOOL QUERY SYSTEM_____");

            while (goOn) {
                System.out.printf("CHOOSE:\nMenu: 1.Make a query %n%29" +
                        "s %n%13s", "2.Make an update(empty)" ,"0.Exit\n");

                Scanner scan = new Scanner(System.in);
                int userInput = scan.nextInt();

                switch (userInput) {

                    case 0:
                        System.out.println("Exit, thanks for visiting the SQL QUERY SYSTEM!");
                        goOn = false;
                        break;

                    case 1:
                        System.out.println("***Choose Table***");
                        System.out.println("See all: \n1.Students \n2.Classes\n3.Teachers\n4.Teacher @ Classes\n5.Report ALL");


                        Scanner scan2 = new Scanner(System.in);
                        int userInput2 = scan2.nextInt();

                        switch (userInput2) {
                            case 0:
                                System.out.println("Exit, thanks for visiting the SQL QUERY SYSTEM!");
                                goOn = false;
                                break;
                            case 1:
                                sql.tableName = "students";
                                System.out.println("\nOur Students are: ");
                            case 2:
                                sql.tableName = "classes";
                                System.out.println("\nOur Classes are:");

                                sql.sqlQuery2();

                                break;
                            case 3:
                                sql.tableName = "teachers";
                                System.out.println("\nOur Teachers are:");
                                sql.sqlQuery3();

                                break;

                            case 4:

                                System.out.println("Please Enter Teachers ID:");
                                Scanner scan3 = new Scanner(System.in);
                                int userInput3 = scan3.nextInt();
                                sql.userInput = userInput3;
                                sql.sqlTeacherClasses();
                                break;

                            case 5:

                                sql.tableName = "students";
                                System.out.println("\nOur Students are: ");
                                sql.sqlQuery();
                                sql.tableName = "classes";
                                System.out.println("\nOur Classes are: ");

                                sql.sqlQuery2();
                                sql.tableName = "teachers";
                                System.out.println("\nOur Teachers are: ");
                                sql.sqlQuery3();

                                break;






                        }
                    case 2:

                        break;


                }
            }
        }
    }

