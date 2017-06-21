.class Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NewsfeedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/NewsfeedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheOpenHelper"
.end annotation


# static fields
.field private static volatile instance:Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;->instance:Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/vkcoffee/android/CustomDB;->POSTS_DB:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method

.method public static clearInstance()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;->instance:Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    .line 46
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;->instance:Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;->instance:Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;->instance:Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;->instance:Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;

    return-object v0

    .line 54
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
    .line 61
    invoke-static {p1}, Lcom/vkcoffee/android/cache/CacheTables;->createPosts(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/cache/NewsfeedCache$CacheOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method
