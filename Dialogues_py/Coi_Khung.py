~ Talk_1
Thằng Còi nằm giữa đường như cây sậy cản bất cứ ai muốn qua. Hắn cứ ngồi đó từ sáng đến tối.
Còi Khùng: "Nhóc không nên đi lên đó đâu! Trên đó đỏ lắm!"
- Bạn: "Tại sao?" [if 9 > Talker.att["iq"]["sum"] and Talker.att["iq"]["sum"] > 3]
	Còi Khùng: [Khua tay] Biết vậy là được!
- Bạn: Màu đỏ? [if Talker.att["iq"]["sum"] > 6]
	Còi Khùng: [Gật đầu] ĐỎ thẫm! Nhìn sợ bỏ xừ...
- Bạn: Đỏ! Máu? Đỏ? [if Talker.att["iq"]["sum"] < 3]
    Còi Khùng nhìn bạn chăm chú, như nhìn một hình bóng xưa. 
    Còi Khùng: [Cười toáng lên] Nhóc cũng thấy à? Đừng dại mà lên đó!
- Bạn: Đỏ kệ nó! Tránh ra mau. [if Talker.att["iq"]["sum"] > 3]
    Còi Khùng: [Cười một tràng điên dại] Qua được thì cứ tự nhiên.
    Nói xong hắn bước ra đứng chắn giữa đường. => END
- [Rời đi]. => END
    ádffa
~ Talk_2
Còi Khùng vẫn nằm giữa đường, đúng cái vị trí mà hôm qua hắn nằm, không chệch một li.
Còi Khùng: Kiên trì không lại tao đâu nhóc. 
- Bạn: Tránh ra mau! 
do Talker.f()
Còi Khùng thở dài rồi đứng dậy. => END
