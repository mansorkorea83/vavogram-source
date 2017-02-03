.class public Lco/ronash/pushe/d/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static volatile a:Lco/ronash/pushe/d/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "__pushe_base_lib_db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/d/a;
    .locals 2

    sget-object v0, Lco/ronash/pushe/d/a;->a:Lco/ronash/pushe/d/a;

    if-nez v0, :cond_1

    const-class v1, Lco/ronash/pushe/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/ronash/pushe/d/a;->a:Lco/ronash/pushe/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/d/a;

    invoke-direct {v0, p0}, Lco/ronash/pushe/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/d/a;->a:Lco/ronash/pushe/d/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lco/ronash/pushe/d/a;->a:Lco/ronash/pushe/d/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE _task_table(_id INTEGER PRIMARY KEY,tag TEXT,network_required INTEGER,next_try_time INTEGER,back_off_count INTEGER,task_delay INTEGER,is_periodic INTEGER,task_type INTEGER,created_at DATETIME DEFAULT CURRENT_TIMESTAMP )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE _upstream_n_notif_table(_id INTEGER PRIMARY KEY,gcm_msg_id TEXT,msg_data TEXT,msg_type INTEGER,msg_create_time INTEGER,msg_create_date DATE )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE _collection_data(_id INTEGER PRIMARY KEY,col_json TEXT,col_type TEXT,created_at DATETIME DEFAULT CURRENT_TIMESTAMP )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE IF EXISTS _task_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS _upstream_n_notif_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS _collection_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lco/ronash/pushe/d/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE IF EXISTS _task_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS _upstream_n_notif_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS _collection_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lco/ronash/pushe/d/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
