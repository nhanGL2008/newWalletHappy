# Plannning Wallet Happy application

1. Anser Questions
    - What are ew building ?
    - Who are we building it for ?
    - What features do we need to have?
2. User Stories
3. Model our Data
4. Think through the pages we need in our app

## Questions 

1. What are we buiding ?
        Chúng ta sẽ xây dựng 1 web site quản lý tiền tệ cá nhân. Thống kê số tiền đã tiêu , chi trong 1 tháng.
2. Who are we building it for ?
        Xây dựng hệ thống để cho người dùng cá nhân , bản thân , bạn bè,...
3. What features do we need to have?
    - Users
        - Create account
        - Login
    - Wallets
        - Create / Edit / Destroy.
    - Transactions
        - Create / Edit / Destroy.
    - Categorys
        - Create / Edit / Destroy.


## Modeling our Data

- Ví tiền có 2 loại **ví tiền mặt** và ví **tài khoản ngân hàng**. (nên chỉ để tên cho dễ). Quản lý bằng tên.
- Một Ví tiền có tên ví (*name*) và số dư ( *balance* ), 1 list các giao dịch chi tiêu.
- **List giao dịch**: Mỗi tháng có 1 danh sách khác nhau , gồm nhiều giao dịch được sắp xếp theo thời gian thêm vào , sớm hơn thì ở trên.
- Mỗi **giao dịch** có thông tin *ngày giao dịch* , *nhóm giao dịch*, *số tiền* thực hiện giao dịch, *Ghi chú*.
- **Nhóm giao dịch** : bao gồm *nhóm thu* và *nhóm chi*. Mỗi loại nhóm thu chi có nhiều loại nhóm nhỏ .Nhóm thu/chi có *tên* và *icon* tương ứng.

- **User**:
    - name:string
    - password:string
    - has_many :wallets

- **Wallet**:
    - name:string
    - balance:float
    - has_many :transactions
    - belongs_to :user

- **Transaction**:
    - day:datetime
    - money:float
    - note:text
    - belongs_to :wallets
- **Category**:
    - name:string
    - icon:string (link icon)
    - ctype:boolean
    - has_many :ctypes

## Think through the pages we need in our app

 - Home
 - Home#login
 - Home#register
 - Wallet#index
 - Wallet#_form
 - Wallet#show
 - Transaction#index
 - Transaction#_form
 - Transaction#show
 - Category#index
 - Category#_form
 - About
