#testing
import numpy as np
import matplotlib.pyplot as plt
# r=np.array(list(range(0,541)))


def get_data():
    x = np.genfromtxt("PCOS_dataset.csv",skip_header=1, delimiter=",",comments="~")
    header = np.genfromtxt("PCOS_dataset.csv",dtype="S", delimiter=",",comments="~",max_rows=1)
    return x
def plotting(x):
    n=eval(input("Enter column numbers as a list"))
    # p1=np.empty(541)
    # print(x)  
    c=len(n)*100+11
    for z in n :
        l=[]
        l1=[]
        r1=[]
        r2=[]
        for i in range(0,x.shape[0]):
            # print(x[i,2],"\t\t\t\t",i)
                if x[i,2]==0:
                    l.append(x[i,z]) 
                    r1.append(i)           
                elif x[i,2]==1:       
                    l1.append(x[i,z])
                    r2.append(i)
                

        # p1=np.array(l)
        plt.subplot(c)
        plt.plot(r1,l,'o')
        plt.plot(r2,l1,'x')
        c+=1
    plt.show()   

if __name__=="__main__":
    a=get_data()
    plotting(a)

    




