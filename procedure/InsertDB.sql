CREATE PROCEDURE InsertDB
	@unm varchar(50),
	@fnm varchar(50),
	@lnm varchar(50),
	@mobile bigint,
	@email_id varchar(50),
	@password varchar(11)
	as 
	Begin
	insert into users(username,firstname,lastname,mobile_no,email_id,password) values(@unm,@fnm,@lnm,@mobile,@email_id,@password)
End
