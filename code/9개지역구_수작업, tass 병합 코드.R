library(openxlsx)
# 불러오기
taas_이천 = read.xlsx('01. 경기 이천/이천_taas.xlsx')
taas_파주 = read.xlsx('02. 경기 파주/파주_taas.xlsx')
taas_여수 = read.xlsx('06. 전남 여수/여수_taas.xlsx')
taas_남해 = read.xlsx('03. 경남 남해/남해_taas.xlsx')
taas_양산 = read.xlsx('04. 경남 양산/양산_taas.xlsx')
taas_영덕 = read.xlsx('05. 경상 영덕/영덕_taas.xlsx')
taas_함평 = read.xlsx('07. 전남 함평/함평_taas.xlsx')

# 불러오기
hand_이천 = read.xlsx('01. 경기 이천/이천_수작업.xlsx')
hand_파주 = read.xlsx('02. 경기 파주/파주_수작업.xlsx')
hand_여수 = read.xlsx('06. 전남 여수/여수_수작업.xlsx')
hand_남해 = read.xlsx('03. 경남 남해/남해_수작업.xlsx')
hand_양산 = read.xlsx('04. 경남 양산/양산_수작업.xlsx')
hand_영덕 = read.xlsx('05. 경상 영덕/영덕_수작업.xlsx')
hand_함평 = read.xlsx('07. 전남 함평/함평_수작업.xlsx')

# 병합하기
merge_이천 = merge(taas_이천, hand_이천, by = '사고번호')
merge_파주 = merge(taas_파주, hand_파주, by = '사고번호')
merge_여수 = merge(taas_여수, hand_여수, by = '사고번호')
merge_남해 = merge(taas_남해, hand_남해, by = '사고번호')
merge_양산 = merge(taas_양산, hand_양산, by = '사고번호')
merge_영덕 = merge(taas_영덕, hand_영덕, by = '사고번호')
merge_함평 = merge(taas_함평, hand_함평, by = '사고번호')

# 엑셀 파일로 저장
write.xlsx(merge_이천, file="merge_경기_이천.xlsx", Encoding = 'utf-8')
write.xlsx(merge_파주, file="merge_경기_파주.xlsx", Encoding = 'utf-8')
write.xlsx(merge_여수, file="merge_경북_여수.xlsx", Encoding = 'utf-8')
write.xlsx(merge_남해, file="merge_경남_남해.xlsx", Encoding = 'utf-8')
write.xlsx(merge_양산, file="merge_경남_양산.xlsx", Encoding = 'utf-8')
write.xlsx(merge_영덕, file="merge_전남_영덕.xlsx", Encoding = 'utf-8')
write.xlsx(merge_함평, file="merge_전남_함평.xlsx", Encoding = 'utf-8')
