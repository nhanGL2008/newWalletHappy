## Wallet Happy

- Bài tập Chuyên đề Công nghệ - Họ tên: Nguyễn Thành Nhân - MSSV: 13020634
- Trợ giúp: HTTN Team (Khắc Thành, Thu Trang, Nguyễn Thành Nhân).

- Web services quản lý tài chính cá nhân.
- Mẫu: https://moneylover.me/vi/
- Link: https://happywallets.herokuapp.com/ 

# Brief information
    - Users
        - Create account
        - Login
    - Wallets
        - Create / Edit / Destroy.
    - Transactions
        - Create / Edit / Destroy.
    - Categorys
        - Create / Edit / Destroy.


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
    - belongs_to :wallets, category
- **Category**:
    - name:string
    - icon:string (link icon)
    - ctype:boolean
    - has_many :transactions



