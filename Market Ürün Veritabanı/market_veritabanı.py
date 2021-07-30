import mysql.connector
from tkinter import ttk
from tkinter import *
from tkinter.ttk import Combobox
import tkinter as tk
import os
import sys

root = Tk()
root.geometry('1400x560')
root.configure(background='#FFF8DC')
root.title('Ürün Ekleme Formu')

def getListboxValue():
    itemSelected= tedarik.curselection()
    return itemSelected

def veriekle():
    sorgu = "INSERT INTO urunler (urun_no,tedarikci_no,urun_adi, marka, gramaj, fiyat, stok_durum, kategori, alt_kategori, puan) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    deger = (urun_kodu.get(),sum(tedarik.curselection()),urun_adi.get(), marka.get(),gramaj.get(), fiyat.get(),stok.get(), combobox_1.get(), combobox_2.get(), puan.get())
    mycursor.execute(sorgu, deger)
    veritab.commit()
    root.destroy()
    os.startfile("market_veritabanı.py")

#ürün kodu label
Label(root, text='Ürün Kodu:', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=33, y=80)

#Ürün kodu entry
urun_kodu=Entry(root)
urun_kodu.place(x=33, y=104)

#Ürün Adı label
Label(root, text='Ürün Adı:', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=33, y=18)

#Ürün Adı entry
urun_adi=Entry(root)
urun_adi.place(x=33, y=41)

# Marka label
Label(root, text='Marka:', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=33, y=143)

# Marka entry
marka=Entry(root)
marka.place(x=33, y=172)

#Gramaj label
Label(root, text='Gramaj:', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=33, y=195)

#Gramaj slider
gramaj= Scale(root, from_ =0, to=1000, orient=HORIZONTAL)
gramaj.place(x=33, y=230)

#Fiyat label
Label(root, text='Ürünün Fiyatı:', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=33, y=290)

#Fiyat entry
fiyat=Entry(root)
fiyat.place(x=33, y=320)

#stok label
Label(root, text='Stokta Var Mı? ', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=33, y=350)

# This is the section of code which creates a group of radio buttons
stok = IntVar()

#stok radiobutton
var = Radiobutton(root, text = "VAR", variable = stok, value = 1)
var.pack(anchor=W)
var.place(x=33,y=380)

yok = Radiobutton(root, text = "YOK", variable = stok, value = 0)
yok.pack(anchor=W)
yok.place(x=85,y=380)

#kategori ve alt kategori için combobox
variable_1 = tk.StringVar()
variable_1.set("Kategori Seçin")
values_1 = ["Meyve/Sebze","Şarküteri","Kasap","Kahvaltılık","Fırın","İçecekler","Alkollü İçecekler","Kuruyemiş","Atıştırmalıklar","Bakliyat","Donmuş Gıda","Gazete/Dergi","Deterjan/Temizlik","Sağlık"
            ]
combobox_1 = Combobox(
    master=root,
    textvariable=variable_1,
    values=values_1,
)
combobox_1.place(x=185,y=40)

variable_2 = tk.StringVar()
variable_2.set("Alt Kategori Seçin")
values_2 = {
    "İçecekler": ["Su", "Kola", "Çay","Soğuk Çay","Soda","T.Kahve","Limonata"],
    "Atıştırmalıklar": ["Cips","Gofret","Jelibon","Sakız","Şeker","Bisküvi","Kek","Kraker", "Çikolata"],
    "Meyve/Sebze": ["Vişne","Muz","Çilek","Limon","Soğan","Sarımsak","Patates","Portakal","Domates"],
    "Şarküteri": ["Salam","Pastırma","Sucuk","Sosis","Füme Et","Kavurma"],
    "Kasap":["Bonfile","But","Dana Eti","Kırmızı Et","Balık","Sakatat"],
    "Kahvaltılık": ["Peynir", "Zeytin","Süt","Yoğurt","Tereyağı","Margarin","Yumurta"],
    "Fırın": ["Ekmek", "Simit","Poğaça","Börek","Kruvasan","Yaş Pasta","Kuru Pasta"],
    "Donmuş Gıda": ["Pizza","Köfte","Lahmacun","Mısır","Bezelye","Börek"],
    "Bakliyat": ["Pirinç","Nohut","Fasulye","Bulgur","Makarna","Barbunya"],
    "Gazete/Dergi": ["Gazete","Kitap", "Dergi"],
    "Deterjan/Temizlik": ["Sabun ", "Fırça","Sıvı Deterjan","Toz Deterjan","Yumoş","Çamarşır Suyu"],
    "Sağlık": ["Vitamin","Yara Bandı","Ateş Ölçer","Maske","Eldiven","Dezenfektan"],
    "Alkollü İçecekler": ["Bira","Viski","Votka","Şarap","Tekila"],
    "Kuruyemiş":["Çekirdek", "Ceviz","Antep Fıstığı","Fıstık","Fındık","Kaju"]
}
combobox_2 = Combobox(
    master=root,
    textvariable=variable_2,
    values=values_2["İçecekler"]
)
combobox_2.place(x=185, y=104)

def change():
    if combobox_1.get() == "İçecekler":
        combobox_2.configure(values=values_2["İçecekler"])
    elif combobox_1.get() == "Atıştırmalıklar":
        combobox_2.configure(values=values_2["Atıştırmalıklar"])
    elif combobox_1.get() == "Meyve/Sebze":
        combobox_2.configure(values=values_2["Meyve/Sebze"])
    elif combobox_1.get() == "Alkollü İçecekler":
        combobox_2.configure(values=values_2["Alkollü İçecekler"])
    elif combobox_1.get() == "Şarküteri":
        combobox_2.configure(values=values_2["Şarküteri"])
    elif combobox_1.get() == "Kasap":
        combobox_2.configure(values=values_2["Kasap"])
    elif combobox_1.get() == "Bakliyat":
        combobox_2.configure(values=values_2["Bakliyat"])

    elif combobox_1.get() == "Meyve/Sebze":
        combobox_2.configure(values=values_2["Meyve/Sebze"])
    elif combobox_1.get() == "Kahvaltılık":
        combobox_2.configure(values=values_2["Kahvaltılık"])
    elif combobox_1.get() == "Fırın":
        combobox_2.configure(values=values_2["Fırın"])
    elif combobox_1.get() == "Donmuş Gıda":
        combobox_2.configure(values=values_2["Donmuş Gıda"])
    elif combobox_1.get() == "Kuruyemiş":
        combobox_2.configure(values=values_2["Kuruyemiş"])
    elif combobox_1.get() == "Gazete/Dergi":
        combobox_2.configure(values=values_2["Gazete/Dergi"])
    elif combobox_1.get() == "Deterjan/Temizlik":
        combobox_2.configure(values=values_2["Deterjan/Temizlik"])
    if combobox_1.get() == "Sağlık":
      combobox_2.configure(values=values_2["Sağlık"])

combobox_1.bind("<<ComboboxSelected>>", lambda event: change())

#puan label
Label(root, text='Market Kart Puanı:', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=185, y=165)

#puan slider
puan= Scale(root, from_ =0, to=10, orient=HORIZONTAL)
puan.place(x=185, y=205)

# Tedarik label
Label(root, text='Tedarikçi Şirketi Seçin: ', bg='#FFF8DC', font=('arial', 12, 'italic')).place(x=185, y=260)

# Tedarik listbox
tedarik=Listbox(root, bg='#EEE8CD', font=('arial', 12, 'italic'), width=0, height=0)
tedarik.insert('0', 'TAT GIDA LTD. ŞTI')
tedarik.insert('1', 'NET GIDA LTD. ŞTI')
tedarik.insert('2', 'KAR KURUYEMIŞ A.Ş.')
tedarik.insert('3', 'YAYSAT DAĞITIM A.Ş.')
tedarik.insert('4', 'METTER TEMİZLİK ÜRÜNLERİ LTD. ŞTI.')
tedarik.insert('5', 'FEZA KİMYA A.Ş.')
tedarik.insert('6', 'FORZA GIDA A.Ş.')
tedarik.place(x=185, y=290)

#Kaydet buton
yap=Button(root,text='Ürünü Kaydet', bg='#FF3030', font=('arial', 15, 'italic'),command=veriekle)
yap.place(x=368,y=500)


veritab = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="market_veritabani"
)

mycursor = veritab.cursor()

#Veritabanını göstermek
mycursor.execute("SELECT * FROM `urunler`")

#baştaki boş row'u silmek
tree=ttk.Treeview(root)
tree["show"]="headings"

#Temayı değiştirmek
s = ttk.Style(root)
s.theme_use("clam")

#Yazıları ve renkleri değiştirmek
s.configure(".", font=("Helvatica", 8))
s.configure("Treeview.Heading", foreground="red",font=("Helvatica", 9,"bold"))

#sütunları belirle
tree["columns"]=("urun_no","tedarikci_no","urun_adi","marka","gramaj","fiyat","puan","kategori","alt_kategori","stok_durum")

#sütunların boyutlarını,yerini belirle
tree.column("urun_no", width=40,minwidth=20, anchor=tk.CENTER)
tree.column("tedarikci_no", width=82,minwidth=82, anchor=tk.CENTER)
tree.column("urun_adi", width=80,minwidth=80, anchor=tk.CENTER)
tree.column("marka", width=80,minwidth=80, anchor=tk.CENTER)
tree.column("gramaj", width=55,minwidth=55, anchor=tk.CENTER)
tree.column("fiyat",width=50,minwidth=50, anchor=tk.CENTER)
tree.column("puan", width=50,minwidth=50, anchor=tk.CENTER)
tree.column("kategori", width=80,minwidth=80, anchor=tk.CENTER)
tree.column("alt_kategori", width=95,minwidth=95, anchor=tk.CENTER)
tree.column("stok_durum", width=100,minwidth=80, anchor=tk.CENTER)

#sütunlardaki verilerin isimlerini belirle
tree.heading("urun_no", text="Ürün No", anchor=tk.CENTER)
tree.heading("tedarikci_no", text="Tedarikçi No", anchor=tk.CENTER)
tree.heading("urun_adi", text="Ürün adı", anchor=tk.CENTER)
tree.heading("marka", text="Markası", anchor=tk.CENTER)
tree.heading("gramaj", text="Gramajı", anchor=tk.CENTER)
tree.heading("fiyat", text="Fiyatı", anchor=tk.CENTER)
tree.heading("puan", text="Puanı", anchor=tk.CENTER)
tree.heading("kategori", text="Kategori", anchor=tk.CENTER)
tree.heading("alt_kategori", text="Alt Kategori", anchor=tk.CENTER)
tree.heading("stok_durum", text="Stok Durumu", anchor=tk.CENTER)

i = 0
for ro in mycursor:
    tree.insert('', i, text='', values=(ro[0],ro[1],ro[2],ro[3],ro[4],ro[5],ro[6],ro[7],ro[8],ro[9]))
    i= i+1

#tekerlek
ysb = ttk.Scrollbar(root,orient="vertical")
ysb.configure(command=tree.yview)
tree.configure(yscrollcommand=ysb.set)
ysb.pack(fill=Y,side=RIGHT)
tree.pack()

root.mainloop()
