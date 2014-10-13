' ページャー　スクレイピング

base_page = 1
page_max = 10
data_cnt = 0
data_max = get_data_cnt()


loop_cnt = page_max
while base_page * page_max > data_max
  for i =1 to loop_cnt
	data_cnt = data_cnt + 1
	range(iy,3) = getelementbyxpath(//tr[i}/td[2])
  next
  getElenentById(//input[@value=“next”]).click
  base_page = base_page + 1
loop

loop_cnt =  data_max -  (base_page-1) * page_max 
for i =1 to loop_cnt
	data_cnt = data_cnt + 1
	range(iy,3) = getelementbyxpath(//tr[i}/td[2])
next
