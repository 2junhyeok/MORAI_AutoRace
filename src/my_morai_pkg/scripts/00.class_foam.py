class Class_example: # 1. class 이름 설정
    def __init__(self):  # 2. init단 설정
        self.data = 0

    def func(self):  # 3. 함수 설정
        pass

def main():
    try:
        class_name = Class_example()
        class_name.func()
    except:
        pass

if __name__=="__main__":
    main()