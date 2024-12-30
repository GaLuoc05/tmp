~ Talk_1
if player.att["perception"]["sight"] >= 2:
	{{talker.name[0]}}: Lão già ngồi bận bịu trong góc phòng.
	if player.att["perception"]["sight"] > 4:
		set player.appearance[0] = true
		{{talker.name[0]}}: Ông nom gầy gò nhưng từng hành động vẫn toát lên sức khỏe. 
if player.att["perception"]["sight"] == 1:
	{{talker.name[0]}}: Bạn thấy mập mờ một thứ gì đó đang chuyển động.
{{talker.name[0]}}: ...
if player.att["perception"]["sight"] > 2:
	Ông lão đang nấu một món[if player.att["iq"]["science"] > 2] canh thịt với rau, bổ thân[else] canh gì đó[/if].
if player.["perception"]["smell"] > 2:
	Mùi hương[if player.att["perception"]["sight"] == 1] của một món ăn gì đó[/if] lan khắp phòng. [if player.att["iq"]["science"] > 2] Mùi của thịt lợn, dược thảo. 
	player.attMax()
	if player.att_max == "perception": Mùi hương không thơm, nhưng rất dễ chịu.[if player.stats["hungry"] < 20] Từng làn hơi vào phổi bạn càng làm cho chiếc bụng đói réo to hơn.[/if][if player.["stats"]["hp"] < 20] Mùi thức ăn giúp tim bạn dịu đi, bớt đi những cảm giác nhức nhói mỗi lần đập.
	if player.att_max == "eq": Mùi hương tựa cánh tay ai đó vỗ về bạn[if player.stats["hungry"] < 20], xoa dịu chiếc bụng đói meo [if player.["stats"]["hp"] > 20]của bạn[/if][/if][if player.["stats"]["hp"] < 20], sưởi ấm con tim lạnh lẽo của bạn[/if].
	if player.att_max == "wpw": Bạn thèm! Bạn muốn ăn đống thức ăn đó, ăn tới hết thì thôi.
	if player.att_max == "iq": Dù đói hay không, bạn sẽ cảm thấy tốt hơn nhiều với đống đồ ăn đó trong miệng.
	if player.att_max == "bmi": Phần ăn đủ sức cho bạn ăn tới nổ cái bụng!
if player.att["perception"]["hearing"] == 1:
	{{talker.name[0]}}: A a a à?
	- Không làm gì cả.
		if player.att["iq"]["language"] < 1: Bạn muốn nói gì đó. Ra hiệu gì đó. Nhưng bạn không biết phải làm gì, nên bạn cứ đứng đờ ra đó, như một pho tượng lâu ngày bị rêu bám lấy.
	if player.att["iq"]["language"] > 1:
		- Ra hiệu rằng bạn không nghe được.
			Bạn đưa tay lên tai rồi lắc đầu. Ông lão hiểu ngay tức khắc, ổng đưa cái muỗng đập đập vào[if player.att["perception"]["sight"] > 2] thành của nồi canh[else] viền kim loại gì đó[/if].
else:
	{{talker.name[0]}}:[if player.att["perception"]["hearing"] > 2] Giọng lão khàn mà ồm, chậm rãi.[/if] 