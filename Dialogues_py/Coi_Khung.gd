~ Gossip
- Bạn: Nói về Y Lão.[if talker.has_met("Y_Lao")]
	- Còi Khùng: "Lọm khọm, khụ khụ." Hắn cười toáng lên. Khom lưng lại bắt chước lão già. "Tao sẽ làm thuốc nếu mày làm trò."
~ Talk_1
if talker.att["perception"]["sight"] >= 2:
	Thằng Còi nằm giữa đường như cây sậy cản bất cứ ai muốn qua. Hắn cứ ngồi đó từ sáng đến tối.
	if talker.att["perception"]["hearing"] >= 2:
		Còi Khùng: "Nhóc không nên đi lên đó đâu! Trên đó đỏ lắm!"
		- Bạn: "Tại sao?" [if 9 > talker.att["iq"]["sum"] and talker.att["iq"]["sum"] > 3]
		Còi Khùng: Hắn khua tay - "Biết vậy là được!" => Talk_1
		- Bạn: "Màu đỏ?" [if talker.att["iq"]["sum"] > 6]
		Còi Khùng: Gật đầu. - "ĐỎ thẫm! Nhìn sợ bỏ xừ..." => Talk_1
		- Bạn: "Đỏ! Máu? Đỏ?" [if talker.att["iq"]["sum"] < 3]
		Còi Khùng nhìn bạn chăm chú, như nhìn một hình bóng xưa. 
		Còi Khùng: Cười toáng lên. - "Nhóc cũng thấy à? Đừng dại mà lên đó!"
		- Bạn: "Đỏ kệ nó! Tránh ra mau." [if talker.att["iq"]["sum"] > 3]
		Còi Khùng: Cười một tràng điên dại. - "Qua được thì cứ tự nhiên."
		Nói xong hắn bước ra đứng chắn giữa đường. => END
		- Rời đi. => END
		
~ Talk_2
Còi Khùng vẫn nằm giữa đường, đúng cái vị trí mà hôm qua hắn nằm, không chệch một li.
Còi Khùng: "Kiên trì không lại tao đâu nhóc."
- Bạn: "Tránh ra mau!"
	Còi Khùng thở dài rồi đứng dậy. => END
		