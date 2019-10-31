drop table if exists OrderDetail;

drop table if exists Orders;

drop table if exists Product;

drop table if exists User;

/*==============================================================*/
/* Table: OrderDetail                                           */
/*==============================================================*/
create table OrderDetail
(
   id                   int not null auto_increment,
   order_id             int,
   product_id           int,
   price                int,
   number               double,
   primary key (id)
);

/*==============================================================*/
/* Table: Orders                                                */
/*==============================================================*/
create table Orders
(
   id                   int not null auto_increment,
   address              varchar(50),
   createTime           date,
   receiveName          varchar(50),
   phone                varchar(50),
   user_id              int,
   totalPrice           double,
   status               int,
   description          varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Product
(
   id                   int not null auto_increment,
   productName          varchar(50),
   description          varchar(255),
   price                double,
   count                int,
   primary key (id)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   id                   int not null auto_increment,
   userName             varchar(50),
   passWord             varchar(20),
   score                double,
   primary key (id)
);
