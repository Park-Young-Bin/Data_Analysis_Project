library(openxlsx)
library(dplyr)
library(ggplot2)
library(RColorBrewer)

# install.packages("gridExtra")
library(gridExtra)


# 1. 시간대별 피해자 상해정도 그래프 ----
df <- read.xlsx('C:/Users/user/Desktop/project_data/time_preprocess.xlsx')
df

df$사고내용 <- ifelse(df$사고내용 == 1, '부상신고',
                  ifelse(df$사고내용 == 2, '경상', 
                         ifelse(df$사고내용 == 3, '중상', '사망'))) # 사고내용 값 변경

df$사고내용 <- factor(df$사고내용, 
                  levels = c("부상신고", '경상', '중상', "사망"), order = T) # factor 변경 및 순서 지정
levels(df$사고내용) # 순서 확인

p1 <- ggplot(data = df, aes(x = 시간범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('시간대별 사고건수_상해정도') + 
  xlab('시간대') + 
  ylab('사고건수') + 
  theme_classic() + 
  scale_x_discrete(limits = c('0~2시', '3~5시', '6~8시', '9~11시', '12~14시', '15~17시', '18~20시', '21~23시')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        # legend.title = element_blank(''),
        legend.text = element_text(size = 8),
        legend.position = 'top',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=20, hjust=1),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette="Blues")
p1
# 2. 평균기온별 피해자 상해 그래프 ----
df2 <- read.xlsx('C:/Users/user/Desktop/project_data/temp_preprocess.xlsx')
df2

summary(df2$평균온도)

df2$사고내용 <- ifelse(df2$사고내용 == 1, '부상신고',
                  ifelse(df2$사고내용 == 2, '경상', 
                         ifelse(df2$사고내용 == 3, '중상', '사망'))) # 사고내용 값 변경

df2$사고내용 <- factor(df2$사고내용, 
                  levels = c("부상신고", '경상', '중상', "사망"), order = T) # factor 변경 및 순서 지정
levels(df2$사고내용) # 순서 확인

p2 <- ggplot(data = df2, aes(x = 기온범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('평균기온별 사고건수_상해정도') + 
  xlab('평균기온') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('-13.7 ~ -7.75°C', '-7.75 ~ -1.91°C', '-1.91 ~ 3.93°C', '3.93 ~ 9.77°C', 
                              '9.77 ~ 15.62°C', '15.62 ~ 21.46°C', '21.46 ~ 27.31°C', '27.31 ~ 33.15°C',
                              '33.15 ~ 39°C')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=20, hjust=1),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette="Blues")
p2
# 3. 속도별 피해자 상해정도 그래프 ----
df3 <- read.xlsx('C:/Users/user/Desktop/project_data/speed_preprocess.xlsx')

df3$사고내용 <- ifelse(df3$사고내용 == 1, '부상신고',
                   ifelse(df3$사고내용 == 2, '경상', 
                          ifelse(df3$사고내용 == 3, '중상', '사망'))) # 사고내용 값 변경

df3$사고내용 <- factor(df3$사고내용, 
                   levels = c("부상신고", '경상', '중상', "사망"), order = T) # factor 변경 및 순서 지정
levels(df3$사고내용) # 순서 확인

table(df3$속도범주)

df3$속도범주 <- ifelse(df3$속도범주 == '(0.649, 0.745]', '0.649 ~ 0.745', 
                   
       ifelse(df3$속도범주 == '(0.745, 0.84]', '0.745 ~ 0.84', 
              
              ifelse(df3$속도범주 == '(0.84, 0.935]', '0.84 ~ 0.935',
                     
                     ifelse(df3$속도범주 == '(0.935, 1.03]', '0.935 ~ 1.03', 
                            
                            ifelse(df3$속도범주 == '(1.03, 1.125]', '1.03 ~ 1.125',
                                   
                                   ifelse(df3$속도범주 == '(1.125, 1.22]', '1.125 ~ 1.22', 
                                          
                                          ifelse(df3$속도범주 == '(1.22, 1.315]', '1.22 ~ 1.315',
                                                 
                                                 ifelse(df3$속도범주 == '(1.315, 1.41]', '1.315 ~ 1.41',
                                                        
                                                        ifelse(df3$속도범주 == '(1.41, 1.505]', '1.41 ~ 1.505', '1.505 ~ 1.6')))))))))

p3 <- ggplot(data = df3, aes(x = 속도범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('보행속도별 사고건수_상해정도') + 
  xlab('보행속도(단위: m/s)') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('0.649 ~ 0.745', '0.745 ~ 0.84', '0.84 ~ 0.935', '0.935 ~ 1.03', '1.03 ~ 1.125', 
                              '1.125 ~ 1.22', '1.22 ~ 1.315', '1.315 ~ 1.41', '1.41 ~ 1.505', '1.505 ~ 1.6')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=20, hjust=1),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette="Blues")
p3
# 4. 노면상태별 피해자 상해정도 그래프 ----
df4 <- read.xlsx('C:/Users/user/Desktop/project_data/전처리_9개횡단보도_신호등.xlsx')

df4$사고내용 <- ifelse(df4$사고내용 == 1, '부상신고',
                  ifelse(df4$사고내용 == 2, '경상', 
                         ifelse(df4$사고내용 == 3, '중상', '사망'))) # 사고내용 값 변경

df4$사고내용 <- factor(df4$사고내용, 
                  levels = c("부상신고", '경상', '중상', "사망"), order = T) # factor 변경 및 순서 지정
levels(df4$사고내용) # 순서 확인

p4 <- ggplot(data = df4, aes(x = 노면상태, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('노면상태별 사고건수_상해정도') + 
  xlab('노면상태') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('포장 - 건조', '포장 - 젖음/습기')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette="Blues")
p4
# 5. 보도턱 낮춤 여부별 피해자 상해정도 그래프 ----
table(df4$보도턱낮춤여부)

df4$보도턱낮춤여부 <- factor(df4$보도턱낮춤여부, 
                  levels = c(0, 1)) # factor 변경 및 순서 지정
levels(df4$보도턱낮춤여부)

df4$보도턱낮춤여부범주 <- ifelse(df4$보도턱낮춤여부 == 1, '보도턱 낮추지 않음', '보도턱 낮춤')

p5 <- ggplot(data = df4, aes(x = 보도턱낮춤여부범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('보도턱 낮춤 여부별 사고건수_상해정도') + 
  xlab('보도턱 낮춤 여부') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('보도턱 낮추지 않음', '보도턱 낮춤')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette="Blues")
p5
# 6. 기상상태별 피해자 상해정도 그래프 ----
table(df4$기상상태)
class(df4$기상상태) # 문자형

df4$기상상태 <- ifelse(df4$기상상태 == '1', '맑음',
                      ifelse(df4$기상상태 == '2', '흐림', 
                            ifelse(df4$기상상태 == '3', '안개',
                                   ifelse(df4$기상상태 == '4', '비','기타'))))

p6 <- ggplot(data = df4, aes(x = 기상상태, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('기상상태별 사고건수_상해정도') + 
  xlab('기상상태') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('맑음', '비', '흐림', '기타', '안개')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette="Blues")
p6
# 7. 요일별 피해자 상해정도 그래프 ----
df4$요일
df4$요일 <- ifelse(df4$요일 == '0', '일',
       ifelse(df4$요일 == '1', '월',
              ifelse(df4$요일 == '2', '화',
                     ifelse(df4$요일 == '3', '수',
                            ifelse(df4$요일 == '4', '목',
                                   ifelse(df4$요일 == '5', '금', '토'))))))

p7 <- ggplot(data = df4, aes(x = 요일, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('요일별 사고건수_상해정도') + 
  xlab('요일') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('일', '월', '화', '수', '목', '금', '토')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette="Blues")
p7
# 8. 도로형태별 피해자 상해정도 그래프 ----
dff <- read.xlsx('C:/Users/user/Desktop/project_data/전처리_9개횡단보도_신호등(숫자형).xlsx')

dff$사고내용 <- ifelse(dff$사고내용 == 1, '부상신고',
                  ifelse(dff$사고내용 == 2, '경상', 
                         ifelse(dff$사고내용 == 3, '중상', '사망'))) # 사고내용 값 변경

dff$사고내용 <- factor(dff$사고내용, 
                  levels = c("부상신고", '경상', '중상', "사망"), order = T) # factor 변경 및 순서 지정
levels(dff$사고내용) # 순서 확인

dff$도로형태범주 <- ifelse(dff$도로형태 == 1, '주차장',
                      ifelse(dff$도로형태 == 2, '단일로',
                            ifelse(dff$도로형태 == 3, '교차로', '기타')))

p8 <- ggplot(data = dff, aes(x = 도로형태범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('도로형태별 사고건수_상해정도') + 
  xlab('도로형태') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('교차로', '단일로', '주차장', '기타')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p8
# 9. 자전거 횡단도 겸용 여부별 피해자 상해정도 그래프 ----
table(dff$자전거횡단도겸용여부)
dff$자전거횡단도겸용여부범주 <- ifelse(dff$자전거횡단도겸용여부 == 1, '겸용함', '겸용 안함')

p9 <- ggplot(data = dff, aes(x = 자전거횡단도겸용여부범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('자전거 횡단도 겸용 여부별 사고건수_상해정도') + 
  xlab('자전거 횡단도 겸용 여부') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('겸용 안함', '겸용함')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p9
# 10. 고원식 적용 여부별 피해자 상해정도 그래프 ----
table(dff$고원식적용여부)
dff$고원식적용여부범주 <- ifelse(dff$고원식적용여부 == 1, '적용함', '적용안함')

p10 <- ggplot(data = dff, aes(x = 고원식적용여부범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('고원식 여부별 사고건수_상해정도') + 
  xlab('고원식 적용 여부') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('적용안함', '적용함')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p10
# 11. 보행자 작동 신호기 유무별 피해자 상해정도 그래프 ----
table(dff$보행자작동신호기유무)
dff$보행자작동신호기유무범주 <- ifelse(dff$보행자작동신호기유무 == 1, '있음', '없음')

p11 <- ggplot(data = dff, aes(x = 보행자작동신호기유무범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('보행자 작동 신호기 유무별 사고건수_상해정도') + 
  xlab('보행자 작동 신호기 유무') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('없음', '있음')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p11
# 12. 음향 신호기 설치 여부별 피해자 상해정도 그래프 ----
table(dff$음향신호기설치여부)
dff$음향신호기설치여부범주 <- ifelse(dff$음향신호기설치여부 == 1, '설치함', '설치 안함')

p12 <- ggplot(data = dff, aes(x = 음향신호기설치여부범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('음향신호기 설치 여부별 사고건수_상해정도') + 
  xlab('음향신호기 설치 여부') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('설치 안함', '설치함')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p12
# 13. 차로수별 피해자 상해정도 그래프 ----
dff$차로수범주 <- ifelse(dff$차로수 == 1, '1차로',
                    ifelse(dff$차로수 == 2, '2차로',
                           ifelse(dff$차로수 == 3, '3차로',
                                  ifelse(dff$차로수 == 4, '4차로',
                                         ifelse(dff$차로수 == 5, '5차로',
                                                ifelse(dff$차로수 == 6, '6차로', '7차로 이상'))))))

p13 <- ggplot(data = dff, aes(x = 차로수범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('차로수별 사고건수_상해정도') + 
  xlab('차로수') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('1차로','2차로','3차로','4차로','5차로','6차로', '7차로 이상')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p13
# 14. 횡단보도폭별 피해자 상해정도 그래프 ----
dff$횡단보도폭범주 <- ifelse(dff$횡단보도폭 >= 1 & dff$횡단보도폭 < 2, '1 ~ 2m',
                      ifelse(dff$횡단보도폭 >= 2 & dff$횡단보도폭 < 4, '2 ~ 4m',
                             ifelse(dff$횡단보도폭 >= 4 & dff$횡단보도폭 < 6, '4 ~ 6m',
                                    ifelse(dff$횡단보도폭 >= 6 & dff$횡단보도폭 < 8, '6 ~ 8m', '8 ~ 10m'))))

p14 <- ggplot(data = dff, aes(x = 횡단보도폭범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('횡단보도폭별 사고건수_상해정도') + 
  xlab('횡단보도폭') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('8 ~ 10m', '6 ~ 8m', '4 ~ 6m', '2 ~ 4m', '1 ~ 2m')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p14
# 15. 횡단보도연장별 피해자 상해정도 그래프 ----
dff$횡단보도연장범주 <- ifelse(dff$횡단보도연장 >= 5.8 & dff$횡단보도연장 < 10, '10m 이하',
                       ifelse(dff$횡단보도연장 >= 10 & dff$횡단보도연장 < 15, '10 ~ 15m', 
                              ifelse(dff$횡단보도연장 >= 15 & dff$횡단보도연장 < 20, '15 ~ 20m',
                                     ifelse(dff$횡단보도연장 >= 20 & dff$횡단보도연장 < 25, '20 ~ 25m',
                                            ifelse(dff$횡단보도연장 >= 25 & dff$횡단보도연장 < 30, '25 ~ 30m', '30m 이상')))))

p15 <- ggplot(data = dff, aes(x = 횡단보도연장범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('횡단보도연장별 사고건수_상해정도') + 
  xlab('횡단보도연장') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('10m 이하', '10 ~ 15m', '15 ~ 20m', '20 ~ 25m', '25 ~ 30m', '30m 이상')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p15
# 16. 교통섬 유무별 피해자 상해정도 그래프 ----
dff$교통섬범주 <- ifelse(dff$교통섬 == 1, '있음', '없음')
table(dff$교통섬범주)

p16 <- ggplot(data = dff, aes(x = 교통섬범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('교통섬 유무별 사고건수_상해정도') + 
  xlab('교통섬 유무') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('없음', '있음')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p16
# 17. 점자블록 유무별 피해자 상해정도 그래프 ----
dff$점자블록유무범주 <- ifelse(dff$점자블록유무 == 1, '있음', '없음')
table(dff$점자블록유무범주)

p17 <- ggplot(data = dff, aes(x = 점자블록유무범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('점자블록 유무별 사고건수_상해정도') + 
  xlab('점자블록 유무') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('있음', '없음')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p17
# 18. 집중조명시설 유무별 피해자 상재정도 그래프 ----
dff$집중조명시설범주 <- ifelse(dff$집중조명시설 == 1, '있음', '없음')

p18 <- ggplot(data = dff, aes(x = 집중조명시설범주, fill = 사고내용), position = "stack") + 
  geom_bar() +
  ggtitle('집중조명시설 유무별 사고건수_상해정도') + 
  xlab('집중조명시설 유무') + 
  ylab('') + 
  theme_classic() + 
  scale_x_discrete(limits = c('있음', '없음')) +
  theme(plot.title = element_text(face = 'bold',
                                  hjust = 0.5,
                                  size = 12),
        legend.position = '',
        axis.title.x = element_text(angle=0),
        axis.text.x = element_text(angle=0),
        axis.title.y = element_text(angle=90),
        axis.text.y = element_text(angle=0)) +
  labs(fill = '상해유형') +
  scale_fill_brewer(palette='Blues')
p18

grid.arrange(p1, p2, p3, p4, p6, p7, p8, p9, p11, p12, p13, p14, p15, p17, p18, p5, p10, p16, ncol=5)
