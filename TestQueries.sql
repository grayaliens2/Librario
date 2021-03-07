select O.FirstName, O.LastName, P.Title
	from user O, usergame E, games P
	where (O.UserID = E.UserID) and (E.GameId = P.GameID)