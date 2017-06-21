.class public Lme/grishka/appkit/imageloader/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/imageloader/ImageCache$Parameters;,
        Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;,
        Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppKit_ImageCache"

.field private static downloaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lme/grishka/appkit/imageloader/ImageDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lme/grishka/appkit/imageloader/ImageCache;

.field private static params:Lme/grishka/appkit/imageloader/ImageCache$Parameters;


# instance fields
.field private appContext:Landroid/content/Context;

.field private cache:Lme/grishka/appkit/imageloader/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/grishka/appkit/imageloader/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private final diskCacheLock:Ljava/lang/Object;

.field private registeredLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    .line 44
    new-instance v0, Lme/grishka/appkit/imageloader/ImageCache$Parameters;

    invoke-direct {v0}, Lme/grishka/appkit/imageloader/ImageCache$Parameters;-><init>()V

    sput-object v0, Lme/grishka/appkit/imageloader/ImageCache;->params:Lme/grishka/appkit/imageloader/ImageCache$Parameters;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->registeredLoaders:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCacheLock:Ljava/lang/Object;

    .line 95
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageCache;->open()V

    .line 96
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ImageCache;->appContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$000()Lme/grishka/appkit/imageloader/ImageCache;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    return-object v0
.end method

.method static synthetic access$100(Lme/grishka/appkit/imageloader/ImageCache;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ImageCache;

    .prologue
    .line 31
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->registeredLoaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lme/grishka/appkit/imageloader/ImageCache;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ImageCache;

    .prologue
    .line 31
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lme/grishka/appkit/imageloader/ImageCache;Lcom/jakewharton/disklrucache/DiskLruCache;)Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ImageCache;
    .param p1, "x1"    # Lcom/jakewharton/disklrucache/DiskLruCache;

    .prologue
    .line 31
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    return-object p1
.end method

.method static synthetic access$400(Lme/grishka/appkit/imageloader/ImageCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ImageCache;

    .prologue
    .line 31
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Lme/grishka/appkit/imageloader/ImageCache$Parameters;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lme/grishka/appkit/imageloader/ImageCache;->params:Lme/grishka/appkit/imageloader/ImageCache$Parameters;

    return-object v0
.end method

.method private static fn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Lme/grishka/appkit/imageloader/ImageCache;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    if-nez v4, :cond_0

    .line 62
    new-instance v4, Lme/grishka/appkit/imageloader/ImageCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lme/grishka/appkit/imageloader/ImageCache;-><init>(Landroid/content/Context;)V

    sput-object v4, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    .line 64
    new-instance v3, Lme/grishka/appkit/imageloader/HTTPImageDownloader;

    invoke-direct {v3}, Lme/grishka/appkit/imageloader/HTTPImageDownloader;-><init>()V

    .line 65
    .local v3, "httpDownloader":Lme/grishka/appkit/imageloader/HTTPImageDownloader;
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    const-string/jumbo v5, "http"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    const-string/jumbo v5, "https"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lme/grishka/appkit/imageloader/ContentImageDownloader;

    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-direct {v1, v4}, Lme/grishka/appkit/imageloader/ContentImageDownloader;-><init>(Lme/grishka/appkit/imageloader/ImageCache;)V

    .line 68
    .local v1, "contentDownloader":Lme/grishka/appkit/imageloader/ContentImageDownloader;
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    const-string/jumbo v5, "content"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Lme/grishka/appkit/imageloader/FileImageDownloader;

    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-direct {v2, v4}, Lme/grishka/appkit/imageloader/FileImageDownloader;-><init>(Lme/grishka/appkit/imageloader/ImageCache;)V

    .line 70
    .local v2, "fileDownloader":Lme/grishka/appkit/imageloader/FileImageDownloader;
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v4, Lme/grishka/appkit/imageloader/ImageCache;->appContext:Landroid/content/Context;

    .line 74
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    sget-object v5, Lme/grishka/appkit/imageloader/ImageCache;->params:Lme/grishka/appkit/imageloader/ImageCache$Parameters;

    iget v5, v5, Lme/grishka/appkit/imageloader/ImageCache$Parameters;->memoryCacheSize:I

    div-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x400

    mul-int/lit16 v0, v4, 0x400

    .line 75
    .local v0, "cacheSize":I
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    new-instance v5, Lme/grishka/appkit/imageloader/ImageCache$1;

    invoke-direct {v5, v0}, Lme/grishka/appkit/imageloader/ImageCache$1;-><init>(I)V

    iput-object v5, v4, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    .line 91
    .end local v0    # "cacheSize":I
    .end local v1    # "contentDownloader":Lme/grishka/appkit/imageloader/ContentImageDownloader;
    .end local v2    # "fileDownloader":Lme/grishka/appkit/imageloader/FileImageDownloader;
    .end local v3    # "httpDownloader":Lme/grishka/appkit/imageloader/HTTPImageDownloader;
    :cond_0
    sget-object v4, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    return-object v4
.end method

.method private static isValidBitmap(Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;)Z
    .locals 16
    .param p0, "e"    # Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    .prologue
    const-wide/16 v14, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    .line 371
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 372
    .local v4, "in":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 373
    .local v3, "header":I
    move-object v0, v5

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v12

    sub-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 374
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 378
    .local v6, "trailer":I
    const/high16 v8, -0x10000

    and-int/2addr v8, v3

    const/high16 v11, -0x280000

    if-ne v8, v11, :cond_1

    const v8, 0xffff

    and-int/2addr v8, v6

    const v11, 0xffd9

    if-ne v8, v11, :cond_1

    .line 406
    .end local v3    # "header":I
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "trailer":I
    :cond_0
    :goto_0
    return v9

    .line 382
    .restart local v3    # "header":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "trailer":I
    :cond_1
    const v8, 0x47494638

    if-ne v3, v8, :cond_2

    and-int/lit16 v8, v6, 0xff

    const/16 v11, 0x3b

    if-eq v8, v11, :cond_0

    .line 386
    :cond_2
    const v8, -0x76afb1b9

    if-ne v3, v8, :cond_3

    const v8, -0x51bd9f7e

    if-eq v6, v8, :cond_0

    .line 390
    :cond_3
    const v8, 0x52494646

    if-ne v3, v8, :cond_5

    .line 391
    move-object v0, v5

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const-wide/16 v12, 0x4

    invoke-virtual {v8, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 392
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 394
    .local v2, "fileSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getLength(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    add-int/lit8 v8, v2, 0x8

    int-to-long v14, v8

    cmp-long v8, v12, v14

    if-nez v8, :cond_4

    move v8, v9

    :goto_1
    move v9, v8

    goto :goto_0

    :cond_4
    move v8, v10

    goto :goto_1

    .line 396
    .end local v2    # "fileSize":I
    .end local v3    # "header":I
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "trailer":I
    :catch_0
    move-exception v7

    .line 397
    .local v7, "x":Ljava/lang/Throwable;
    const-string/jumbo v8, "AppKit_ImageCache"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v9, v10

    .line 406
    goto :goto_0

    .line 403
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "h"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 145
    .local v2, "md":Ljava/security/MessageDigest;
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 146
    .local v4, "s":[B
    const-string/jumbo v3, ""

    .line 148
    .local v3, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 149
    const/16 v5, 0x10

    new-array v0, v5, [C

    fill-array-data v0, :array_0

    .line 153
    .local v0, "hex":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v4, v1

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v4, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "hex":[C
    .end local v1    # "i":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "ret":Ljava/lang/String;
    .end local v4    # "s":[B
    :catch_0
    move-exception v5

    .line 159
    const-string/jumbo v3, ""

    :cond_0
    return-object v3

    .line 149
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private open()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/grishka/appkit/imageloader/ImageCache$2;

    invoke-direct {v1, p0}, Lme/grishka/appkit/imageloader/ImageCache$2;-><init>(Lme/grishka/appkit/imageloader/ImageCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method public static setParams(Lme/grishka/appkit/imageloader/ImageCache$Parameters;)V
    .locals 2
    .param p0, "p"    # Lme/grishka/appkit/imageloader/ImageCache$Parameters;

    .prologue
    .line 50
    sget-object v0, Lme/grishka/appkit/imageloader/ImageCache;->instance:Lme/grishka/appkit/imageloader/ImageCache;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageCache is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    sput-object p0, Lme/grishka/appkit/imageloader/ImageCache;->params:Lme/grishka/appkit/imageloader/ImageCache$Parameters;

    .line 53
    return-void
.end method

.method private waitForDiskCache()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 186
    :try_start_1
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 190
    :cond_1
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 484
    :try_start_0
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageCache;->waitForDiskCache()V

    .line 485
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageCache;->open()V

    .line 488
    return-void

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearTopLevel()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/LruCache;->evictAll()V

    .line 101
    return-void
.end method

.method public decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/16 v11, 0x5dc

    const/4 v10, 0x0

    .line 410
    if-nez p1, :cond_1

    .line 411
    const-string/jumbo v9, "AppKit_ImageCache"

    const-string/jumbo v11, "tried to decode null image"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    .line 461
    :cond_0
    :goto_0
    return-object v2

    .line 415
    :cond_1
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 416
    .local v6, "opts1":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 417
    instance-of v9, p1, Ljava/io/FileInputStream;

    if-eqz v9, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 418
    :cond_2
    const/4 v9, 0x0

    invoke-static {p1, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 419
    instance-of v9, p1, Ljava/io/FileInputStream;

    if-eqz v9, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 420
    :cond_3
    const/4 v7, 0x1

    .line 421
    .local v7, "sampleSize":I
    if-nez p2, :cond_4

    if-eqz p3, :cond_8

    .line 422
    :cond_4
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 423
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    move/from16 v0, p2

    int-to-float v11, v0

    div-float/2addr v9, v11

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v11, v11

    move/from16 v0, p3

    int-to-float v12, v0

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 436
    :cond_5
    :goto_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 437
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 438
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 440
    const/4 v9, 0x0

    invoke-static {p1, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 441
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_a

    .line 442
    move/from16 v4, p2

    .line 443
    .local v4, "dw":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    move/from16 v0, p2

    int-to-float v11, v0

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 444
    .local v3, "dh":I
    const/4 v9, 0x1

    invoke-static {v2, v4, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 445
    goto/16 :goto_0

    .line 424
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "dh":I
    .end local v4    # "dw":I
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_6
    if-eqz p2, :cond_7

    .line 425
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    move/from16 v0, p2

    int-to-float v11, v0

    div-float/2addr v9, v11

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v7, v12

    goto :goto_1

    .line 426
    :cond_7
    if-eqz p3, :cond_5

    .line 427
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    move/from16 v0, p3

    int-to-float v11, v0

    div-float/2addr v9, v11

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v7, v12

    goto :goto_1

    .line 429
    :cond_8
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v9, v11, :cond_9

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v9, v11, :cond_5

    .line 430
    :cond_9
    const-string/jumbo v9, "AppKit_ImageCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Image too big: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/lit16 v7, v9, 0x5dc

    .line 432
    const-string/jumbo v9, "AppKit_ImageCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Image will be downscaled to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " times smaller"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 451
    .end local v6    # "opts1":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "sampleSize":I
    :catch_0
    move-exception v8

    .line 452
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "AppKit_ImageCache"

    const-string/jumbo v11, "OH SHI~"

    invoke-static {v9, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    iget-object v9, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v9}, Lme/grishka/appkit/imageloader/LruCache;->size()I

    move-result v9

    const/16 v11, 0x400

    if-le v9, v11, :cond_b

    .line 454
    iget-object v9, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v9}, Lme/grishka/appkit/imageloader/LruCache;->evictAll()V

    .line 455
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 457
    invoke-virtual/range {p0 .. p3}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    .line 445
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "opts1":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "sampleSize":I
    :cond_a
    if-eqz p3, :cond_0

    .line 446
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    move/from16 v0, p3

    int-to-float v11, v0

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 447
    .restart local v4    # "dw":I
    move/from16 v3, p3

    .line 448
    .restart local v3    # "dh":I
    const/4 v9, 0x1

    invoke-static {v2, v4, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 460
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "dh":I
    .end local v4    # "dw":I
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "opts1":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "sampleSize":I
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_b
    const-string/jumbo v9, "AppKit_ImageCache"

    const-string/jumbo v11, "WTF?!"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    .line 461
    goto/16 :goto_0
.end method

.method public downloadFile(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "w"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .param p3, "pc"    # Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;
    .param p4, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v4, 0x0

    .line 465
    const-string/jumbo v3, ""

    .line 466
    .local v3, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 467
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_2

    .line 468
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 472
    :cond_0
    sget-object v5, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ImageDownloader;

    .line 473
    .local v0, "downloader":Lme/grishka/appkit/imageloader/ImageDownloader;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ImageDownloader;->isFileBased()Z

    move-result v5

    if-nez v5, :cond_3

    .line 478
    :cond_1
    :goto_1
    return v4

    .line 466
    .end local v0    # "downloader":Lme/grishka/appkit/imageloader/ImageDownloader;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .restart local v0    # "downloader":Lme/grishka/appkit/imageloader/ImageDownloader;
    :cond_3
    :try_start_0
    invoke-virtual {v0, p1, p4, p3, p2}, Lme/grishka/appkit/imageloader/ImageDownloader;->downloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "persistentPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 203
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "persistentPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "w"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .param p4, "pc"    # Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;
    .param p5, "decode"    # Z

    .prologue
    .line 229
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 230
    const/4 v7, 0x0

    .line 364
    :cond_0
    :goto_0
    return-object v7

    .line 232
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 233
    if-nez p5, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    .line 234
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 236
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->waitForDiskCache()V

    .line 241
    const-string/jumbo v21, ""

    .line 242
    .local v21, "scheme":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_4

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x3a

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 244
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 248
    :cond_4
    sget-object v24, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lme/grishka/appkit/imageloader/ImageDownloader;

    .line 250
    .local v8, "downloader":Lme/grishka/appkit/imageloader/ImageDownloader;
    invoke-virtual {v8}, Lme/grishka/appkit/imageloader/ImageDownloader;->isFileBased()Z

    move-result v24

    if-nez v24, :cond_6

    .line 251
    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v2}, Lme/grishka/appkit/imageloader/ImageDownloader;->getBitmap(Ljava/lang/String;ZLme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 252
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lme/grishka/appkit/imageloader/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 360
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "downloader":Lme/grishka/appkit/imageloader/ImageDownloader;
    .end local v12    # "i":I
    .end local v21    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 361
    .local v23, "x":Ljava/lang/Throwable;
    const-string/jumbo v24, "AppKit_ImageCache"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 242
    .end local v23    # "x":Ljava/lang/Throwable;
    .restart local v12    # "i":I
    .restart local v21    # "scheme":Ljava/lang/String;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 257
    .restart local v8    # "downloader":Lme/grishka/appkit/imageloader/ImageDownloader;
    :cond_6
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 258
    invoke-direct/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->waitForDiskCache()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Lme/grishka/appkit/imageloader/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v10

    .line 260
    .local v10, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    if-eqz v10, :cond_16

    if-eqz p5, :cond_7

    invoke-static {v10}, Lme/grishka/appkit/imageloader/ImageCache;->isValidBitmap(Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 261
    :cond_7
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v13

    .line 262
    .local v13, "in":Ljava/io/InputStream;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    .line 263
    .local v22, "size":[I
    if-eqz p5, :cond_8

    const/16 v24, 0x0

    aget v24, v22, v24

    const/16 v25, 0x1

    aget v25, v22, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 264
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    if-eqz p5, :cond_0

    .line 267
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lme/grishka/appkit/imageloader/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 268
    :catch_1
    move-exception v24

    goto/16 :goto_0

    .line 263
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 275
    .end local v10    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v22    # "size":[I
    :cond_9
    :try_start_3
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 276
    .local v11, "file":Ljava/io/File;
    const/4 v14, 0x0

    .line 277
    .local v14, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 279
    .local v17, "os":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 280
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v14    # "is":Ljava/io/InputStream;
    .local v15, "is":Ljava/io/InputStream;
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v15, v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 281
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-nez v6, :cond_c

    .line 282
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 283
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    .line 284
    .local v20, "parent":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 285
    :cond_a
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 286
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v17    # "os":Ljava/io/OutputStream;
    .local v18, "os":Ljava/io/OutputStream;
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/grishka/appkit/imageloader/ImageCache;->downloadFile(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z

    .line 287
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v7

    .line 305
    if-eqz v14, :cond_b

    .line 306
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_b
    if-eqz v18, :cond_0

    .line 309
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 311
    :catch_2
    move-exception v24

    goto/16 :goto_0

    .line 291
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v20    # "parent":Ljava/io/File;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Lme/grishka/appkit/imageloader/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 305
    if-eqz v15, :cond_d

    .line 306
    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_d
    if-eqz v17, :cond_e

    .line 309
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :cond_e
    :goto_3
    move-object v7, v6

    .line 311
    goto/16 :goto_0

    .line 294
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    :cond_f
    :try_start_b
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    .line 295
    .restart local v20    # "parent":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 296
    :cond_10
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 297
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v18    # "os":Ljava/io/OutputStream;
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/grishka/appkit/imageloader/ImageCache;->downloadFile(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z

    .line 298
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_d
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v15, v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v7

    .line 305
    if-eqz v15, :cond_11

    .line 306
    :try_start_e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_11
    if-eqz v18, :cond_0

    .line 309
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 311
    :catch_3
    move-exception v24

    goto/16 :goto_0

    .line 301
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v18    # "os":Ljava/io/OutputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :cond_12
    const/4 v7, 0x0

    .line 305
    if-eqz v14, :cond_13

    .line 306
    :try_start_f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_13
    if-eqz v17, :cond_0

    .line 309
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    .line 311
    :catch_4
    move-exception v24

    goto/16 :goto_0

    .line 304
    .end local v20    # "parent":Ljava/io/File;
    :catchall_0
    move-exception v24

    .line 305
    :goto_4
    if-eqz v14, :cond_14

    .line 306
    :try_start_10
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_14
    if-eqz v17, :cond_15

    .line 309
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    .line 311
    :cond_15
    :goto_5
    :try_start_11
    throw v24
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    .line 314
    .end local v11    # "file":Ljava/io/File;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v10    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :cond_16
    const/4 v9, 0x0

    .line 316
    .local v9, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Lme/grishka/appkit/imageloader/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v9

    .line 317
    if-nez v9, :cond_1a

    .line 318
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Lme/grishka/appkit/imageloader/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v9

    if-nez v9, :cond_19

    .line 319
    const-wide/16 v24, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_6

    .line 336
    :catch_5
    move-exception v23

    .line 337
    .local v23, "x":Ljava/lang/Exception;
    :try_start_13
    const-string/jumbo v24, "AppKit_ImageCache"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    if-eqz v9, :cond_17

    .line 339
    invoke-virtual {v9}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 342
    .end local v23    # "x":Ljava/lang/Exception;
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Lme/grishka/appkit/imageloader/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v10

    .line 343
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v13

    .line 344
    .restart local v13    # "in":Ljava/io/InputStream;
    if-eqz p3, :cond_18

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->decode:Z

    move/from16 p5, v0

    .line 345
    :cond_18
    if-eqz p5, :cond_1c

    .line 346
    invoke-static {v10}, Lme/grishka/appkit/imageloader/ImageCache;->isValidBitmap(Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;)Z

    move-result v24

    if-nez v24, :cond_1c

    .line 347
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Lme/grishka/appkit/imageloader/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    .line 349
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 321
    .end local v13    # "in":Ljava/io/InputStream;
    :cond_19
    :try_start_14
    invoke-virtual {v9}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 322
    invoke-virtual/range {p0 .. p5}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    .line 324
    :cond_1a
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v19

    .line 326
    .local v19, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v8, v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ImageDownloader;->downloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Z

    move-result v16

    .line 327
    .local v16, "ok":Z
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 328
    if-eqz v16, :cond_1b

    .line 329
    invoke-virtual {v9}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V

    .line 335
    const/4 v9, 0x0

    goto :goto_7

    .line 331
    :cond_1b
    invoke-virtual {v9}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Lme/grishka/appkit/imageloader/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    .line 333
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 352
    .end local v16    # "ok":Z
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v13    # "in":Ljava/io/InputStream;
    :cond_1c
    if-eqz p5, :cond_1d

    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_15
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->decodeImage(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0

    move-result-object v7

    .line 353
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    :goto_8
    if-eqz p5, :cond_0

    .line 355
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lme/grishka/appkit/imageloader/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_0

    .line 356
    :catch_6
    move-exception v24

    goto/16 :goto_0

    .line 352
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_1d
    const/4 v7, 0x0

    goto :goto_8

    .line 311
    .end local v9    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .end local v10    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :catch_7
    move-exception v25

    goto/16 :goto_5

    .line 304
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v24

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v20    # "parent":Ljava/io/File;
    :catchall_2
    move-exception v24

    move-object/from16 v17, v18

    .end local v18    # "os":Ljava/io/OutputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v18    # "os":Ljava/io/OutputStream;
    :catchall_3
    move-exception v24

    move-object/from16 v17, v18

    .end local v18    # "os":Ljava/io/OutputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 311
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v20    # "parent":Ljava/io/File;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v24

    goto/16 :goto_3

    .line 262
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public get(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "w"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .param p3, "pc"    # Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;
    .param p4, "decode"    # Z

    .prologue
    .line 207
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLruCache()Lme/grishka/appkit/imageloader/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/grishka/appkit/imageloader/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    return-object v0
.end method

.method public isInCache(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v1, p1}, Lme/grishka/appkit/imageloader/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageCache;->waitForDiskCache()V

    .line 132
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ImageCache;->diskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {p1}, Lme/grishka/appkit/imageloader/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 135
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isInTopCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/imageloader/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public registerDownloader(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageDownloader;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "downloader"    # Lme/grishka/appkit/imageloader/ImageDownloader;

    .prologue
    .line 116
    sget-object v0, Lme/grishka/appkit/imageloader/ImageCache;->downloaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public registerLoader(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V
    .locals 4
    .param p1, "loader"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 193
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ImageCache;->registeredLoaders:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ImageCache;->registeredLoaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 197
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 200
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;>;"
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ImageCache;->cache:Lme/grishka/appkit/imageloader/LruCache;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
