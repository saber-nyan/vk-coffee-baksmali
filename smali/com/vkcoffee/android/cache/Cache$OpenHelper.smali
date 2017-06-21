.class Lcom/vkcoffee/android/cache/Cache$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHelper"
.end annotation


# static fields
.field private static volatile instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v0, Lcom/vkcoffee/android/CustomDB;->VK_DB:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x4c

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/cache/Cache$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/vkcoffee/android/cache/Cache$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static clear()V
    .locals 4

    .prologue
    .line 74
    const-class v2, Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    monitor-enter v2

    .line 75
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 77
    :try_start_1
    sget-object v1, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    .line 84
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sget-object v3, Lcom/vkcoffee/android/CustomDB;->VK_DB:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 85
    monitor-exit v2

    .line 86
    return-void

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/cache/Cache$OpenHelper;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->instance:Lcom/vkcoffee/android/cache/Cache$OpenHelper;

    return-object v0

    .line 68
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
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/vkcoffee/android/cache/CacheTables;->createCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/cache/Cache$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    return-void
.end method
