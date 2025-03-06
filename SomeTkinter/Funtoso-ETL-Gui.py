from tkinter import *
from tkinter import ttk
import pandas as pd

from tkinter import messagebox


root = Tk()

root.geometry("1000x600+0+10")
root.title("Extract Transform Load")

screenStyle = ttk.Style()


def HomeFrame():
    # You can take Input from your user
    # You can Transfrom you data 
    # You can Load data to any of your database
    # Your simple to comple ETL Logic will be here
    messagebox.showinfo("ETL Information" , "Home Button Pressed")
    
def FinanceFrame():
    messagebox.showinfo("ETL Information" , "You are in Finance Data Area")

def HRDataFrame():
    messagebox.showinfo("ETL Information" , "You are in the HR Data Area")

def ProcumentFrame():
    messagebox.showinfo("ETL Information" , "You are in Procurment ETL Area")

# ===================================================
# **************** Menu Frame ***********************
# ===================================================

headerframe = ttk.Frame(root)
headerframe.grid(column=0, row=0)


heading = ttk.Label(headerframe, text="Fun-Toso Extract Transform Load Manager", font=("Abadi", 25), anchor='center')
heading.grid(column=1, row=0, padx=180 ,pady=20)

menuframe = ttk.Frame(root)
menuframe.grid(column=0, row=4, sticky=(N,W), pady=20)

btnHome = ttk.Button(menuframe, text='Home', command=HomeFrame, width=20)
btnHome.grid(column=0, row=1, ipady=10, padx=10, pady=5)

btnFinance = ttk.Button(menuframe, text='Finance ', command=FinanceFrame, width=20)
btnFinance.grid(column=0, row=2, ipady=10, padx=10, pady=5)

btnHR = ttk.Button(menuframe, text='Humman Resource', command=HRDataFrame, width=20)
btnHR.grid(column=0, row=3, ipady=10,  padx=10, pady=5)

btnProcurment = ttk.Button(menuframe, text='Procurment', command=ProcumentFrame, width=20)
btnProcurment.grid(column=0, row=4, ipady=10, padx=10, pady=5)

btnExit = ttk.Button(menuframe, text='Exit', command=root.quit, width=20)
btnExit.grid(column=0, row=7, ipady=10, padx=10, pady=5)

# ===================================================
# **************** Window Frame *********************
# ===================================================

windowFrame = ttk.Frame(root)
windowFrame.grid(column=1, row=4, sticky="nsew")

root.mainloop()
