import numpy as np
import matplotlib.pyplot as plt
r=np.array(list(range(0,541)))
n=eval(input("Enter column numbers as a list"))
l=[]
l1=[]
x = np.genfromtxt("PCOS_dataset.csv",skip_header=1, delimiter=",")
p1=np.empty(541)
r1=[]
r2=[]
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
    # plt.subplot(c)
    # plt.plot(r1,l,'o')
    # plt.plot(r2,l1,'x')
    #c+=1

    sum=0
    for i in range(0,x.shape[0]):
        sum+=x[i,n[0]]

    avg=sum/541
    print(avg)

    sum1=0
    for j in range(0,x.shape[0]):
        sum1=sum1+(x[j,n[0]]-avg)**2
    print(sum1/541)
