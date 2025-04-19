 c/c++内存泄露检测（MLD）

# 阶段1，创建struct database

## 将应用程序中所有会用到的struct注册到MLD中

## structure database

### typedef struct _struct_db_{

    struct_db_rec_t *head;
    unsigned int count;

} struct_db_t;

## single structure infomation

### struct _struct_db_rec_{

    struct_db_rec_t *next;
    char struct_name [MAX_STRUCTURE_NAME_SIZE];
    unsigned int ds_size;
    unsigned int n_fields;
    field_info_t *fields;

};

## structure field infomation

### typedef struct _field_info_{

    char fname [MAX_FIELD_NAME_SIZE];
    data_type_t dtype;
    unsigned int size;    
    unsigned int offset;   
    char nested_str_name[MAX_STRUCTURE_NAME_SIZE];

} field_info_t;

# 阶段2

# 阶段3
