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
    - User
        - Create account
        - Login
    - Wallets
        - Create / Edit / Destroy.
    - Deals
        - Create / Edit / Destroy.
    - Groups
        - Create / Edit / Destroy.




## User stories

- Người dùng có thể login/create account.
- Người dùng có thể thêm ví tiền, và số dư ban đầu.
- Người dùng có thể xóa ví.
- Người dùng có thể chuyển list giao dịch của các tháng.
- Người dùng có thể thêm giao dịch, xóa giao dịch , sửa giao dịch.
- Người dùng có thể thêm nhóm , xóa nhóm sửa nhóm.


## Modeling our Data

- Ví tiền có 2 loại **ví tiền mặt** và ví **tài khoản ngân hàng**. (nên chỉ để tên cho dễ)
- Một Ví tiền có tên loại ví và số dư ( *balance* ), 1 list các giao dịch chi tiêu.
- **List giao dịch**: Mỗi tháng có 1 danh sách khác nhau , gồm nhiều giao dịch được sắp xếp theo thời gian thêm vào , sớm hơn thì ở trên.
- Mỗi **giao dịch** có thông tin *ngày giao dịch* , *nhóm giao dịch*, *số tiền* thực hiện giao dịch, *Ghi chú*.
- **Nhóm giao dịch** : bao gồm *nhóm thu* và *nhóm chi*. Mỗi loại nhóm thu chi có nhiều loại nhóm nhỏ .Nhóm thu/chi có *tên* và *icon* tương ứng.

- **User**:
    -name:string
    -password:string
- **Wallet**:
    -name:string
    -balance:float
- **wallet_type**:
    -wallet_id:integer
    -name:string
- **Deal**:
    -day:datetime
    -group:string
    -money:float
    -note:text
- **Group**:
    -name:string
    -icon:string (link icon)
- **GroupType**:
    -group_id:integer
    -name:string

## Think through the pages we need in our app

 - Home
 - Home#login
 - Home#createAccount
 - Wallet#index
 - Wallet#create
 - Deal#index
 - Deal#create
 - Group#index
 - Group#create
 - Contact
