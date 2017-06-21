.class public Lcom/vkcoffee/android/cache/AudioCache;
.super Ljava/lang/Object;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/cache/AudioCache$FileRange;,
        Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;,
        Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;,
        Lcom/vkcoffee/android/cache/AudioCache$Proxy;,
        Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    }
.end annotation


# static fields
.field public static final ACTION_ALBUM_ART_AVAILABLE:Ljava/lang/String; = "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

.field public static final ACTION_FILE_ADDED:Ljava/lang/String; = "com.vkcoffee.android.AUDIO_FILE_ADDED"

.field public static final ACTION_FILE_DELETED:Ljava/lang/String; = "com.vkcoffee.android.AUDIO_FILE_DELETED"

.field private static final COPY_BUFFER_SIZE:I = 0x2800

.field public static final ID3_MAX_SIZE:I = 0xfa000

.field private static final PROXY_PORT:I = 0xbcc9

.field public static cacheReqs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static cachedIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field private static deleteCurrent:Z

.field private static dlPartsThread:Ljava/lang/Thread;

.field private static dlRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static filledIDs:Z

.field private static ranges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final retryIntervals:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    .line 52
    sput-boolean v1, Lcom/vkcoffee/android/cache/AudioCache;->filledIDs:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/cache/AudioCache;->retryIntervals:[J

    .line 64
    sput-boolean v1, Lcom/vkcoffee/android/cache/AudioCache;->deleteCurrent:Z

    .line 380
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sput-object v0, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    return-void

    .line 57
    :array_0
    .array-data 8
        0x3e8
        0x7d0
        0x1388
        0x2710
        0x3a98
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/vkcoffee/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/vkcoffee/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/vkcoffee/android/cache/AudioCache;->deleteTempFile(II)V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 49
    sput-object p0, Lcom/vkcoffee/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$602(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 49
    sput-object p0, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static checkFileSize(Ljava/lang/String;II)V
    .locals 18
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 138
    new-instance v13, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v3, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v13, v3}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 139
    .local v13, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v13}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 141
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v3, "files"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "file_size"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 142
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 143
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 145
    .local v12, "fsize":I
    const/4 v15, 0x0

    .line 146
    .local v15, "updated":Z
    const/4 v3, -0x1

    if-ne v12, v3, :cond_0

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/cache/AudioCache;->getFileSize(Ljava/lang/String;)I

    move-result v12

    .line 148
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v15, 0x1

    .line 151
    :cond_0
    const/4 v3, -0x1

    if-eq v12, v3, :cond_1

    .line 152
    new-instance v11, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, v12

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 154
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has incorrect size - deleting!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 156
    const-string/jumbo v3, "files"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND oid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    sget-object v3, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 158
    sget-object v3, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "reload_cached_list"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v3, v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 170
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fsize":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "updated":Z
    :cond_1
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    return-void

    .line 163
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fsize":I
    .restart local v15    # "updated":Z
    :cond_2
    :try_start_1
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " OK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "file_size"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string/jumbo v3, "files"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND oid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fsize":I
    .end local v15    # "updated":Z
    .end local v16    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v17

    .line 172
    .local v17, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static clear()V
    .locals 11

    .prologue
    .line 850
    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v6, :cond_0

    .line 851
    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->stopSelf()V

    .line 853
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 854
    .local v3, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 855
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v6, "vk"

    const-string/jumbo v7, "Clear audio cache"

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :try_start_0
    const-string/jumbo v6, "files"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 858
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 859
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 860
    .local v1, "f":Ljava/io/File;
    const-string/jumbo v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 859
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 863
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    const-string/jumbo v6, "vk"

    const-string/jumbo v7, "All deleted"

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    sget-object v6, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 865
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "reload_cached_list"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v7, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    .end local v2    # "files":[Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 872
    invoke-virtual {v3}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 873
    return-void

    .line 868
    :catch_0
    move-exception v5

    .line 869
    .local v5, "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    invoke-static {v6, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static dbgRanges(Ljava/util/ArrayList;I)V
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/cache/AudioCache$FileRange;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    div-int/lit8 v0, p1, 0x1e

    .line 1314
    .local v0, "cs":I
    const-string/jumbo v5, ""

    .line 1315
    .local v5, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x1e

    if-ge v2, v6, :cond_3

    .line 1316
    mul-int v3, v0, v2

    .line 1317
    .local v3, "l":I
    const/4 v1, 0x0

    .line 1318
    .local v1, "f":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 1319
    .local v4, "rn":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v7, v4, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    if-gt v7, v3, :cond_0

    iget v7, v4, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    if-lt v7, v3, :cond_0

    .line 1320
    const/4 v1, 0x1

    .line 1324
    .end local v4    # "rn":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_1
    if-eqz v1, :cond_2

    .line 1325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1315
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1330
    .end local v1    # "f":Z
    .end local v3    # "l":I
    :cond_3
    const-string/jumbo v7, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    iget v6, v6, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    iget v6, v6, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    return-void
.end method

.method public static deleteCurrent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 876
    sget-object v7, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    .line 877
    .local v2, "f":Lcom/vkcoffee/android/AudioFile;
    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    if-nez v7, :cond_0

    .line 878
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/vkcoffee/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 880
    :cond_0
    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 881
    new-instance v4, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 882
    .local v4, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v4}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 884
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v7, "files"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "aid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and oid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 887
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 888
    invoke-virtual {v4}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 889
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "reload_cached_list"

    invoke-virtual {v5, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v8, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 893
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".deleted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 895
    .local v3, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 896
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 897
    .local v6, "os":Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 898
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 901
    .end local v6    # "os":Ljava/io/FileOutputStream;
    :goto_1
    sput-boolean v10, Lcom/vkcoffee/android/cache/AudioCache;->deleteCurrent:Z

    .line 902
    return-void

    .line 899
    :catch_0
    move-exception v7

    goto :goto_1

    .line 885
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static deleteOld()V
    .locals 15

    .prologue
    .line 820
    new-instance v9, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 821
    .local v9, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 823
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "files"

    const/4 v2, 0x0

    const-string/jumbo v3, "user=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "lastplay asc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 824
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 825
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 826
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v12, v1, -0xa

    .line 827
    .local v12, "nDel":I
    const-string/jumbo v13, ""

    .line 828
    .local v13, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 829
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleted audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "or(oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 831
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 832
    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 833
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 828
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 835
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 836
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 837
    const-string/jumbo v1, "files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 838
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reload_cached_list"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "nDel":I
    .end local v13    # "where":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 846
    invoke-virtual {v9}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 847
    return-void

    .line 842
    :catch_0
    move-exception v14

    .line 843
    .local v14, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v14}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static deleteTempFile(II)V
    .locals 2
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 517
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$4;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/cache/AudioCache$4;-><init>(II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 541
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 542
    return-void
.end method

.method private static downloadParts(Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;)V
    .locals 2
    .param p0, "ri"    # Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    .prologue
    .line 545
    sget-object v0, Lcom/vkcoffee/android/cache/AudioCache;->dlRequests:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/vkcoffee/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/cache/AudioCache$5;-><init>(Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/vkcoffee/android/cache/AudioCache;->dlPartsThread:Ljava/lang/Thread;

    .line 598
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 600
    :cond_0
    return-void
.end method

.method public static endPlayback(IIII)V
    .locals 24
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "oldOid"    # I
    .param p3, "oldAid"    # I

    .prologue
    .line 383
    const-string/jumbo v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "End playback for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-boolean v20, Lcom/vkcoffee/android/cache/AudioCache;->deleteCurrent:Z

    if-eqz v20, :cond_1

    .line 385
    const/16 v20, 0x0

    sput-boolean v20, Lcom/vkcoffee/android/cache/AudioCache;->deleteCurrent:Z

    .line 386
    invoke-static/range {p0 .. p1}, Lcom/vkcoffee/android/cache/AudioCache;->deleteTempFile(II)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 390
    const-string/jumbo v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Renaming file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " -> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 393
    new-instance v19, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    .local v19, "to":Ljava/io/File;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 397
    .end local v19    # "to":Ljava/io/File;
    :cond_2
    new-instance v9, Ljava/io/File;

    .end local v9    # "f":Ljava/io/File;
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ".covers"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    .restart local v9    # "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 399
    new-instance v20, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ".covers"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 401
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p0

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/cache/AudioCache;->setIDs(IIII)V

    .line 402
    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 403
    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_4
    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 406
    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_5
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v20, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v20, "reload_cached_list"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v21, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 412
    .end local v9    # "f":Ljava/io/File;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_6
    sget v20, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, p0

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 413
    :cond_7
    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 414
    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->ranges:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    .line 415
    .local v18, "rn":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    if-nez v18, :cond_8

    .line 416
    invoke-static/range {p0 .. p1}, Lcom/vkcoffee/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0

    .line 419
    :cond_8
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 420
    .local v10, "fr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    new-instance v20, Lcom/vkcoffee/android/cache/AudioCache$3;

    invoke-direct/range {v20 .. v20}, Lcom/vkcoffee/android/cache/AudioCache$3;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    move-object/from16 v0, v18

    iget v15, v0, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->l:I

    .line 427
    .local v15, "l":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 428
    .local v17, "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v5, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {v5, v15}, Lcom/vkcoffee/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 432
    .end local v5    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    .end local v17    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_a

    .line 433
    invoke-static/range {p0 .. p1}, Lcom/vkcoffee/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0

    .line 437
    :cond_a
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_e

    .line 438
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_d

    .line 439
    if-ne v14, v11, :cond_c

    .line 438
    :cond_b
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 442
    :cond_c
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 445
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .local v4, "a":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 446
    .local v6, "b":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v0, v6, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v20, v0

    iget v0, v4, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    iget v0, v6, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v20, v0

    iget v0, v4, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 447
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v14, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 437
    .end local v4    # "a":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v6    # "b":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 451
    .end local v14    # "j":I
    :cond_e
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 454
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 455
    .local v16, "prev":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_11

    .line 456
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 457
    .restart local v17    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    if-nez v17, :cond_f

    .line 455
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 460
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_10

    .line 461
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 462
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 464
    :cond_10
    move-object/from16 v16, v17

    goto :goto_6

    .line 467
    .end local v17    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_11
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 469
    const-string/jumbo v20, "vk"

    const-string/jumbo v21, "After remove overlapping"

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 471
    .restart local v17    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .restart local v5    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-static {v5, v15}, Lcom/vkcoffee/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    goto :goto_7

    .line 475
    .end local v5    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    .end local v17    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v20, v0

    if-nez v20, :cond_13

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v15, :cond_13

    .line 476
    const-string/jumbo v20, "vk"

    const-string/jumbo v21, "We already have full file"

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    :cond_13
    sget-object v20, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 480
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v8, "dl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "prev":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    check-cast v16, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 482
    .restart local v16    # "prev":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    const/4 v11, 0x1

    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_14

    .line 483
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 484
    .restart local v17    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    new-instance v7, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 485
    .local v7, "d":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v7, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 486
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v7, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 487
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    move-object/from16 v16, v17

    .line 482
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 490
    .end local v7    # "d":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v17    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_14
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v15, :cond_15

    .line 491
    new-instance v7, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 492
    .restart local v7    # "d":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v7, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 493
    iput v15, v7, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 494
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v7    # "d":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_15
    const-string/jumbo v20, "vk"

    const-string/jumbo v21, "need to download: "

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {v8, v15}, Lcom/vkcoffee/android/cache/AudioCache;->dbgRanges(Ljava/util/ArrayList;I)V

    .line 498
    new-instance v12, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 499
    .local v12, "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    iput v15, v12, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->l:I

    .line 500
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    .line 501
    iput-object v8, v12, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 502
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->file:Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->file:Lcom/vkcoffee/android/AudioFile;

    .line 503
    invoke-static {v12}, Lcom/vkcoffee/android/cache/AudioCache;->downloadParts(Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;)V

    goto/16 :goto_0

    .line 506
    .end local v8    # "dl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    .end local v12    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    :cond_16
    invoke-static/range {p0 .. p1}, Lcom/vkcoffee/android/cache/AudioCache;->deleteTempFile(II)V

    .line 510
    .end local v10    # "fr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    .end local v11    # "i":I
    .end local v15    # "l":I
    .end local v16    # "prev":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v18    # "rn":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    :cond_17
    invoke-static/range {p0 .. p1}, Lcom/vkcoffee/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v20

    if-nez v20, :cond_0

    .line 513
    invoke-static/range {p0 .. p1}, Lcom/vkcoffee/android/cache/AudioCache;->deleteTempFile(II)V

    goto/16 :goto_0
.end method

.method public static fillIDs(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    sget-boolean v0, Lcom/vkcoffee/android/cache/AudioCache;->filledIDs:Z

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/cache/AudioCache;->filledIDs:Z

    .line 232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/cache/AudioCache$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static fillIDsBlocking(Landroid/content/Context;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkcoffee/android/cache/AudioCache;->filledIDs:Z

    .line 242
    const/4 v14, 0x0

    .line 243
    .local v14, "deleted":Z
    new-instance v20, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 244
    .local v20, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 246
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v3, "files"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "oid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "aid"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "file_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 247
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
    sget-object v3, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 249
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 251
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 253
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 254
    .local v18, "fn":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 255
    .local v19, "fsize":I
    new-instance v16, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v16, "file":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v15, "dfile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".covers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v11, "cfile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IS DELETED!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v4

    move/from16 v0, v19

    int-to-long v6, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 265
    sget-object v3, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_3
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    .end local v11    # "cfile":Ljava/io/File;
    .end local v15    # "dfile":Ljava/io/File;
    .end local v16    # "file":Ljava/io/File;
    .end local v18    # "fn":Ljava/lang/String;
    .end local v19    # "fsize":I
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 283
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 285
    if-eqz v14, :cond_5

    .line 286
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v22, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "reload_cached_list"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 290
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 291
    .local v17, "files":[Ljava/io/File;
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 292
    .local v21, "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    const/4 v3, 0x0

    move/from16 v28, v3

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    aget-object v16, v17, v28

    .line 293
    .restart local v16    # "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    .line 294
    .local v23, "name":Ljava/lang/String;
    const-string/jumbo v3, ".covers"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 292
    :cond_6
    :goto_2
    add-int/lit8 v3, v28, 0x1

    move/from16 v28, v3

    goto :goto_1

    .line 266
    .end local v17    # "files":[Ljava/io/File;
    .end local v21    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v23    # "name":Ljava/lang/String;
    .restart local v11    # "cfile":Ljava/io/File;
    .restart local v15    # "dfile":Ljava/io/File;
    .restart local v18    # "fn":Ljava/lang/String;
    .restart local v19    # "fsize":I
    :cond_7
    const-string/jumbo v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 268
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 270
    :cond_8
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 271
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 273
    :cond_9
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 274
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 276
    :cond_a
    const/4 v14, 0x1

    .line 277
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from DB (file on SD not found or is incomplete)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v3, "files"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 370
    .end local v11    # "cfile":Ljava/io/File;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "dfile":Ljava/io/File;
    .end local v16    # "file":Ljava/io/File;
    .end local v18    # "fn":Ljava/lang/String;
    .end local v19    # "fsize":I
    :catch_0
    move-exception v3

    .line 372
    :cond_b
    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 373
    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 374
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "reload_cached_list"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 377
    return-void

    .line 297
    .end local v22    # "intent":Landroid/content/Intent;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v17    # "files":[Ljava/io/File;
    .restart local v21    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v23    # "name":Ljava/lang/String;
    :cond_c
    :try_start_1
    const-string/jumbo v3, ".deleted"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_6

    .line 301
    :try_start_2
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v15    # "dfile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 303
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 304
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 305
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".covers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 306
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " because it still existed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 319
    .end local v15    # "dfile":Ljava/io/File;
    :catch_1
    move-exception v27

    .line 320
    .local v27, "x":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 321
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".covers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 309
    .end local v27    # "x":Ljava/lang/Exception;
    .restart local v15    # "dfile":Ljava/io/File;
    :cond_d
    :try_start_4
    const-string/jumbo v3, "_"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 310
    .local v26, "sp":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v26, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .local v24, "oid":I
    const/4 v3, 0x1

    aget-object v3, v26, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 311
    .local v10, "aid":I
    const-string/jumbo v3, "files"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "count(*)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "`oid`="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and `aid`="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 312
    .local v13, "cursor1":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_e

    const/16 v25, 0x1

    .line 313
    .local v25, "result":Z
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 314
    if-nez v25, :cond_6

    .line 315
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "need get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v3, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 312
    .end local v25    # "result":Z
    :cond_e
    const/16 v25, 0x0

    goto :goto_4

    .line 324
    .end local v10    # "aid":I
    .end local v13    # "cursor1":Landroid/database/Cursor;
    .end local v15    # "dfile":Ljava/io/File;
    .end local v16    # "file":Ljava/io/File;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "oid":I
    .end local v26    # "sp":[Ljava/lang/String;
    :cond_f
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 325
    new-instance v3, Lcom/vkcoffee/android/api/audio/AudioGetById;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/vkcoffee/android/api/audio/AudioGetById;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vkcoffee/android/cache/AudioCache$2;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/cache/AudioCache$2;-><init>(Ljava/util/Vector;)V

    .line 326
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/audio/AudioGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "useOficPathCache"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "audioCacheLocation"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "audioCacheLocation"

    invoke-static {v3}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCacheDir(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "root"    # Ljava/io/File;

    .prologue
    .line 461
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "useOficPathCache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/io/File;

    const-string v1, "/cacheAudio"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 467
    :goto_0
    return-object v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    new-instance v0, Ljava/io/File;

    const-string v1, "/.vkontakte/cache/audio"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/Android/data/com.vkontakte.android/files/cache/audio"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCachedList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 905
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v10

    .line 906
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 907
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 911
    :cond_0
    new-instance v12, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 912
    .local v12, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v12}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 913
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DB version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :try_start_0
    const-string/jumbo v2, "files"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 917
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 918
    const/4 v13, 0x0

    .line 919
    .local v13, "i":I
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 923
    .local v15, "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {v9, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 924
    new-instance v11, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {v11}, Lcom/vkcoffee/android/AudioFile;-><init>()V

    .line 925
    .local v11, "file":Lcom/vkcoffee/android/AudioFile;
    const-string/jumbo v2, "oid"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkcoffee/android/AudioFile;->oid:I

    .line 926
    const-string/jumbo v2, "aid"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkcoffee/android/AudioFile;->aid:I

    .line 927
    const-string/jumbo v2, "title"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    .line 928
    const-string/jumbo v2, "artist"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    .line 929
    const-string/jumbo v2, "duration"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkcoffee/android/AudioFile;->duration:I

    .line 930
    const-string/jumbo v2, "lyrics_id"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/vkcoffee/android/AudioFile;->lyricsID:I

    .line 931
    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v11, Lcom/vkcoffee/android/AudioFile;->duration:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v11, Lcom/vkcoffee/android/AudioFile;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkcoffee/android/AudioFile;->durationS:Ljava/lang/String;

    .line 933
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v13, v13, 0x1

    .line 936
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 937
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v13    # "i":I
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 942
    invoke-virtual {v12}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 944
    sput-object p0, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    .line 945
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->deleteOld()V

    .line 947
    invoke-static {v14}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 949
    return-object v14

    .line 938
    :catch_0
    move-exception v16

    .line 939
    .local v16, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCoverVersion(II)I
    .locals 12
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 676
    const/4 v10, 0x0

    .line 677
    .local v10, "result":I
    new-instance v9, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 678
    .local v9, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 680
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "cover_version"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 681
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 682
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 683
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 692
    invoke-virtual {v9}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 693
    return v10

    .line 684
    :catch_0
    move-exception v11

    .line 685
    .local v11, "x":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no such column"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 686
    const-string/jumbo v1, "ALTER TABLE files ADD cover_version int not null default 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 687
    const-string/jumbo v1, "ALTER TABLE files ADD lyrics text"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 689
    :cond_0
    const-string/jumbo v1, "vk"

    invoke-static {v1, v11}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 126
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 128
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 129
    .local v1, "len":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "len":I
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLyrics(II)Ljava/lang/String;
    .locals 12
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 728
    const/4 v10, 0x0

    .line 729
    .local v10, "result":Ljava/lang/String;
    new-instance v9, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 730
    .local v9, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 732
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "lyrics"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 733
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 734
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 735
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 744
    invoke-virtual {v9}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 745
    return-object v10

    .line 736
    :catch_0
    move-exception v11

    .line 737
    .local v11, "x":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no such column"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 738
    const-string/jumbo v1, "ALTER TABLE files ADD cover_version int not null default 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    const-string/jumbo v1, "ALTER TABLE files ADD lyrics text"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    :cond_0
    const-string/jumbo v1, "vk"

    invoke-static {v1, v11}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static intersectRanges(Ljava/util/ArrayList;Lcom/vkcoffee/android/cache/AudioCache$FileRange;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "b"    # Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/cache/AudioCache$FileRange;",
            ">;",
            "Lcom/vkcoffee/android/cache/AudioCache$FileRange;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/cache/AudioCache$FileRange;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 989
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    .line 993
    .local v0, "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    if-lt v6, v7, :cond_1

    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v6, v7, :cond_1

    .line 994
    iput-boolean v10, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 995
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 999
    :cond_1
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v6, v7, :cond_2

    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    if-le v6, v7, :cond_2

    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    if-gt v6, v7, :cond_2

    .line 1000
    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-direct {v1, v8}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1001
    .local v1, "r1":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1002
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1003
    iput-boolean v9, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1004
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    new-instance v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1006
    .local v2, "r2":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1007
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1008
    iput-boolean v10, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1009
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1013
    .end local v1    # "r1":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v2    # "r2":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_2
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    if-le v6, v7, :cond_3

    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    if-ge v6, v7, :cond_3

    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    if-le v6, v7, :cond_3

    .line 1014
    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-direct {v1, v8}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1015
    .restart local v1    # "r1":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1016
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1017
    iput-boolean v10, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1018
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1020
    .restart local v2    # "r2":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1021
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1022
    iput-boolean v9, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1023
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1027
    .end local v1    # "r1":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v2    # "r2":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_3
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v6, v7, :cond_0

    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iget v7, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    if-le v6, v7, :cond_0

    .line 1028
    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-direct {v1, v8}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1029
    .restart local v1    # "r1":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1030
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1031
    iput-boolean v9, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1032
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-direct {v2, v8}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1034
    .restart local v2    # "r2":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    iput v6, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1035
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1036
    iput-boolean v10, v2, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1037
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v3, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    invoke-direct {v3, v8}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1039
    .local v3, "r3":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    iget v6, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v3, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1040
    iget v6, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    iput v6, v3, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1041
    iput-boolean v9, v3, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1042
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1045
    .end local v0    # "r":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v1    # "r1":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v2    # "r2":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v3    # "r3":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 1046
    iput-boolean v9, p1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->needDownload:Z

    .line 1047
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_5
    return-object v4
.end method

.method public static isCached(II)Z
    .locals 14
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 765
    sget-boolean v1, Lcom/vkcoffee/android/cache/AudioCache;->filledIDs:Z

    if-nez v1, :cond_0

    .line 766
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vkcoffee/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 768
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .line 769
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 770
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 772
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v11, v12

    .line 790
    :goto_0
    return v11

    .line 775
    :cond_2
    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v11, v12

    .line 776
    goto :goto_0

    .line 779
    :cond_3
    const/4 v11, 0x0

    .line 780
    .local v11, "result":Z
    new-instance v10, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 781
    .local v10, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 783
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "`oid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and `aid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 784
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_4

    move v11, v12

    .line 785
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 789
    invoke-virtual {v10}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto :goto_0

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v11, v13

    .line 784
    goto :goto_1

    .line 786
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static isCachedByUser(II)Z
    .locals 14
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 794
    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v11, v12

    .line 816
    :goto_0
    return v11

    .line 797
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .line 798
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 799
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 801
    :cond_1
    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne p0, v1, :cond_2

    .line 802
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    goto :goto_0

    .line 805
    :cond_2
    const/4 v11, 0x0

    .line 806
    .local v11, "result":Z
    new-instance v10, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 807
    .local v10, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 809
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "`oid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and `aid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and `user`=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 810
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    move v11, v12

    .line 811
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 815
    invoke-virtual {v10}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto/16 :goto_0

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    move v11, v13

    .line 810
    goto :goto_1

    .line 812
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;)V
    .locals 16
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "pc"    # Lcom/vkcoffee/android/ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 192
    .local v4, "fromDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    .line 193
    .local v10, "toDir":Ljava/io/File;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_0

    .line 194
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 196
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 197
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 198
    .local v9, "srcList":[Ljava/io/File;
    if-nez v9, :cond_1

    .line 199
    invoke-interface/range {p2 .. p2}, Lcom/vkcoffee/android/ProgressCallback;->onFinished()V

    .line 225
    :goto_0
    return-void

    .line 202
    :cond_1
    array-length v11, v9

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/vkcoffee/android/ProgressCallback;->onSetMaxValue(I)V

    .line 203
    const/16 v11, 0x2800

    new-array v1, v11, [B

    .line 204
    .local v1, "buf":[B
    const/4 v8, 0x0

    .line 205
    .local v8, "read":I
    const/4 v5, 0x0

    .line 206
    .local v5, "i":I
    array-length v12, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v3, v9, v11

    .line 207
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ".part"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 206
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 210
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v10, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v2, "df":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 212
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 214
    .local v6, "in":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    .local v7, "out":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_3

    .line 216
    const/4 v13, 0x0

    invoke-virtual {v7, v1, v13, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 218
    :cond_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 219
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 220
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 221
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/vkcoffee/android/ProgressCallback;->onProgressUpdated(I)V

    goto :goto_2

    .line 223
    .end local v2    # "df":Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :cond_4
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/vkcoffee/android/cache/AudioCache;->refillIDs(Landroid/content/Context;)V

    .line 224
    invoke-interface/range {p2 .. p2}, Lcom/vkcoffee/android/ProgressCallback;->onFinished()V

    goto/16 :goto_0
.end method

.method public static refillIDs(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-object v0, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/cache/AudioCache;->filledIDs:Z

    .line 120
    invoke-static {p0}, Lcom/vkcoffee/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public static saveCurrent(Z)V
    .locals 2
    .param p0, "forced"    # Z

    .prologue
    .line 657
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 658
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    invoke-static {p0, v0}, Lcom/vkcoffee/android/cache/AudioCache;->saveFile(ZLcom/vkcoffee/android/AudioFile;)V

    .line 659
    return-void
.end method

.method public static saveFile(ZLcom/vkcoffee/android/AudioFile;)V
    .locals 12
    .param p0, "forced"    # Z
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 603
    const-string/jumbo v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Save file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget v7, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v7, v8}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 605
    if-eqz p0, :cond_0

    .line 606
    new-instance v3, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 607
    .local v3, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 609
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 611
    const-string/jumbo v7, "file_size"

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->fileSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const-string/jumbo v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Updating: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string/jumbo v7, "files"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "aid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and oid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 617
    invoke-virtual {v3}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 654
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    :cond_0
    :goto_1
    return-void

    .line 621
    :cond_1
    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 622
    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v4, "intent":Landroid/content/Intent;
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v8, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 627
    new-instance v3, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 628
    .restart local v3    # "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 631
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 632
    .restart local v5    # "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "aid"

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    const-string/jumbo v7, "oid"

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string/jumbo v7, "artist"

    iget-object v8, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v7, "title"

    iget-object v8, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v7, "duration"

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string/jumbo v7, "lastplay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    const-string/jumbo v7, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 639
    const-string/jumbo v7, "lyrics_id"

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->lyricsID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string/jumbo v7, "file_size"

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->fileSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string/jumbo v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inserting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v7, "files"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 646
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 647
    invoke-virtual {v3}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 648
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 649
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".deleted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    .local v2, "f":Ljava/io/File;
    const-string/jumbo v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "del "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 652
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 643
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 644
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v7, "vk"

    const-string/jumbo v8, "Error inserting audio cache file"

    invoke-static {v7, v8, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 614
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method public static saveLyrics(IILjava/lang/String;)I
    .locals 8
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "l"    # Ljava/lang/String;

    .prologue
    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "result":I
    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 751
    .local v1, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 753
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "lyrics"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string/jumbo v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "aid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND oid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 760
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 761
    return v2

    .line 756
    :catch_0
    move-exception v4

    .line 757
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setCoverVersion(III)I
    .locals 8
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "ver"    # I

    .prologue
    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "result":I
    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 699
    .local v1, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 701
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "cover_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string/jumbo v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "aid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND oid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 708
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 709
    return v2

    .line 704
    :catch_0
    move-exception v4

    .line 705
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setIDs(IIII)V
    .locals 7
    .param p0, "oid"    # I
    .param p1, "aid"    # I
    .param p2, "newOid"    # I
    .param p3, "newAid"    # I

    .prologue
    .line 713
    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v4, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 714
    .local v1, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 716
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 717
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "oid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    const-string/jumbo v4, "aid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    const-string/jumbo v4, "files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND oid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 724
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 725
    return-void

    .line 720
    :catch_0
    move-exception v3

    .line 721
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updatePlayTime(II)V
    .locals 10
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 662
    new-instance v1, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;

    sget-object v4, Lcom/vkcoffee/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 663
    .local v1, "helper":Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 665
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "lastplay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    const-string/jumbo v4, "files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and oid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 672
    invoke-virtual {v1}, Lcom/vkcoffee/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 673
    return-void

    .line 668
    :catch_0
    move-exception v3

    .line 669
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
