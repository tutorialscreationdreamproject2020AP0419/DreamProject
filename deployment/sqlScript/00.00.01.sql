----------------------------------------Write your all DB related change here-----------------------------------------------
create table mysql.users (id int, 
						active TINYINT, 
						password varchar(500), 
                        role varchar(30), 
                        username varchar(50),
                        ISACCOUNTNONEXPIRED TINYINT,
                        ISACCOUNTNONLOCKED TINYINT,
                        ISCREDIANTIALSNONEXPIRED TINYINT
                        );

insert into mysql.users (id, active, password, role, username,ISACCOUNTNONEXPIRED,ISACCOUNTNONLOCKED,ISCREDIANTIALSNONEXPIRED) 
						values (2, 1, "9044773351","ROLE_USER", "user",1,1,1); 
