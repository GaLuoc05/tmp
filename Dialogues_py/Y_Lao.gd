~ Talk_1
if Talker.att["perception"]["sight"] > 1:
	???: Lão già ngồi bận bịu trong góc phòng. 
else:
	???: Bạn thấy mập mờ một thứ gì đó đang chuyển động.
???: ...
if Talker.att["perception"]["sight"] > 2:
	Ông lão đang nấu một món[if Talker.att["iq"]["science"] > 2] canh thịt với rau, bổ thân[else] canh gì đó[/if].
	if Talker.["perception"]["smell"] > 2:
		Mùi hương lan khắp phòng. [if Talker.att["iq"]["science"] > 2] Mùi của thịt lợn, dược thảo. 
		Talker.attMax()
		if Talker.att_max == "perception": Mùi hương không thơm, nhưng rất dễ chịu.[if Talker.stats["hungry"] < 20] Từng làn hơi vào phổi bạn càng làm cho chiếc bụng đói réo to hơn.[/if][if Talker.["stats"]["hp"] < 20] Mùi thức ăn giúp tim bạn dịu đi, bớt đi những cảm giác nhức nhói mỗi lần đập.
		if Talker.att_max == "eq": Mùi hương tựa cánh tay ai đó vỗ về bạn[if Talker.stats["hungry"] < 20], xoa dịu chiếc bụng đói meo [if Talker.["stats"]["hp"] > 20]của bạn[/if][/if][if Talker.["stats"]["hp"] < 20], sưởi ấm con tim lạnh lẽo của bạn[/if].
		if Talker.att_max == "wpw": Bạn thèm! Bạn muốn ăn đống thức ăn đó, ăn tới hết thì thôi.
		if Talker.att_max == "iq": Dù đói hay không, bạn sẽ cảm thấy tốt hơn nhiều với đống đồ ăn đó trong miệng.
		if Talker.att_max == "bmi": Phần ăn đủ sức cho bạn ăn tới nổ cái bụng!
if Talker.att["perception"]["hearing"] < 1:
	???: A A A à?
	if Talker.att["iq"]["language"] < 1:
		- Đứng yên.
	else:
		- Ra hiệu rằng bạn không nghe được.
else:
	???:[if Talker.att["perception"]["hearing"] > 2] Giọng lão khàn mà ồm, chậm rãi.[/if] 