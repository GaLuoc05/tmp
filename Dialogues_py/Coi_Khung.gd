~ Gossip
- Nói về Y Lão.[if talker.has_met("Y_Lao")]
	{{talker.name[0]}}: "Lọm khọm, khụ khụ." Hắn cười toáng lên. Khom lưng lại bắt chước lão già. "Tao sẽ làm thuốc nếu mày làm trò."
~ Talk_1
Một tên còi cọc nằm giữa đường như cây sậy cản bất cứ ai muốn qua. Hắn cứ ngồi đó không chịu di chuyển tí nào.
if talker.att["perception"]["hearing"] >= 2:
	{{talker.name[0]}}: "Nhóc không nên đi lên đó đâu! Trên đó đỏ lắm!"
	- {{player.name}}: "Tại sao?" [if 9 > talker.att["iq"]["sum"] and talker.att["iq"]["sum"] > 3]
	{{talker.name[0]}}: Hắn khua tay - "Biết vậy là được!" => Talk_1
	- {{player.name}}: "Màu đỏ?" [if talker.att["iq"]["sum"] > 6]
	{{talker.name[0]}}: Gật đầu. - "ĐỎ thẫm! Nhìn sợ bỏ xừ..." => Talk_1
	- {{player.name}}: "Đỏ! Máu? Đỏ?" [if talker.att["iq"]["sum"] < 3]
	{{talker.name[0]}} nhìn {{player.name}} chăm chú, như nhìn một hình bóng xưa. 
	{{talker.name[0]}}: Cười toáng lên. - "Nhóc cũng thấy à? Đừng dại mà lên đó!"
	- {{player.name}}: "Đỏ kệ nó! Tránh ra mau." [if talker.att["iq"]["sum"] > 3]
	{{talker.name[0]}}: Cười một tràng điên dại. - "Qua được thì cứ tự nhiên."
	Nói xong hắn bước ra đứng chắn giữa đường. => END
	- Rời đi. => END
		
~ Talk_2
{{talker.name[0]}} vẫn nằm giữa đường, đúng cái vị trí mà hôm qua hắn nằm, không chệch một li.
{{talker.name[0]}}: "Kiên trì không lại tao đâu nhóc."
- {{player.name}}: "Tránh ra mau!"
	{{talker.name[0]}} thở dài rồi đứng dậy. => END
		