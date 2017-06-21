.class public Lcom/vkcoffee/android/data/db/Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "databaseVerThree.db"

.field private static final DATABASE_VERSION:I = 0xe

.field private static volatile instance:Lcom/vkcoffee/android/data/db/Database;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/data/db/Database;->instance:Lcom/vkcoffee/android/data/db/Database;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method

.method public static getInst(Landroid/content/Context;)Lcom/vkcoffee/android/data/db/Database;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/vkcoffee/android/data/db/Database;->instance:Lcom/vkcoffee/android/data/db/Database;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/vkcoffee/android/data/db/Database;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/data/db/Database;->instance:Lcom/vkcoffee/android/data/db/Database;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/vkcoffee/android/data/db/Database;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "databaseVerThree.db"

    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/vkcoffee/android/data/db/Database;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/vkcoffee/android/data/db/Database;->instance:Lcom/vkcoffee/android/data/db/Database;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/data/db/Database;->instance:Lcom/vkcoffee/android/data/db/Database;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getRequests(ILandroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/db/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "game_requests"

    sget-object v2, Lcom/vkcoffee/android/data/GameRequest;->COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string/jumbo v7, "date"

    const-string/jumbo v8, "20"

    move-object v6, v5

    .line 51
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 53
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v11, "gameRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameRequest;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_0
    new-instance v10, Lcom/vkcoffee/android/data/GameRequest;

    invoke-direct {v10, v9}, Lcom/vkcoffee/android/data/GameRequest;-><init>(Landroid/database/Cursor;)V

    .line 57
    .local v10, "gameRequest":Lcom/vkcoffee/android/data/GameRequest;
    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {v10, p2}, Lcom/vkcoffee/android/data/GameRequest;->fillUserProfiles(Landroid/util/SparseArray;)V

    .line 60
    :cond_1
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 64
    .end local v10    # "gameRequest":Lcom/vkcoffee/android/data/GameRequest;
    :cond_2
    return-object v11
.end method

.method public insertRequest(Lcom/vkcoffee/android/data/GameRequest;)V
    .locals 5
    .param p1, "gameRequest"    # Lcom/vkcoffee/android/data/GameRequest;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/db/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "game_requests"

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/GameRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x5

    .line 74
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 76
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    invoke-static {}, Lcom/vkcoffee/android/data/GameRequest;->createSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 44
    const-string/jumbo v0, "game_requests"

    invoke-static {v0}, Lcom/vkcoffee/android/data/db/Table;->dropSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/db/Database;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method

.method public removeRequest(Lcom/vkcoffee/android/data/GameRequest;)V
    .locals 6
    .param p1, "gameRequest"    # Lcom/vkcoffee/android/data/GameRequest;

    .prologue
    .line 68
    iget-wide v0, p1, Lcom/vkcoffee/android/data/GameRequest;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/db/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "game_requests"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/vkcoffee/android/data/GameRequest;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method
