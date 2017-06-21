.class public Lcom/vkcoffee/android/cache/AlbumArtRetriever;
.super Ljava/lang/Object;
.source "AlbumArtRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;,
        Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;
    }
.end annotation


# static fields
.field public static final USE_DISCOGS:Z

.field private static cache:Lcom/vkcoffee/android/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/vkcoffee/android/cache/LruCache;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->cache:Lcom/vkcoffee/android/cache/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    return-void
.end method

.method static synthetic access$000(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->broadcastCoverAvailable(II)V

    return-void
.end method

.method static synthetic access$200()Lcom/vkcoffee/android/cache/LruCache;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->cache:Lcom/vkcoffee/android/cache/LruCache;

    return-object v0
.end method

.method private static broadcastCoverAvailable(II)V
    .locals 3
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "aid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "oid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static getCoverImage(III)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "type"    # I

    .prologue
    .line 203
    sget-object v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->cache:Lcom/vkcoffee/android/cache/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;

    .line 204
    .local v0, "cached":Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
    if-eqz v0, :cond_0

    .line 205
    packed-switch p2, :pswitch_data_0

    .line 214
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 207
    :pswitch_0
    iget-object v1, v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v1, v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v1, v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCoverImage(IIIIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V
    .locals 9
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "oldAid"    # I
    .param p3, "oldOid"    # I
    .param p4, "type"    # I
    .param p5, "callback"    # Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

    .prologue
    .line 222
    sget-object v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->cache:Lcom/vkcoffee/android/cache/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;

    .line 223
    .local v7, "cached":Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
    if-eqz v7, :cond_0

    .line 224
    packed-switch p4, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->cache:Lcom/vkcoffee/android/cache/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "cached":Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
    check-cast v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;

    .line 238
    .restart local v7    # "cached":Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
    if-eqz v7, :cond_1

    .line 239
    packed-switch p4, :pswitch_data_1

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v0, v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 244
    :pswitch_4
    iget-object v0, v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 247
    :pswitch_5
    iget-object v0, v7, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 252
    :cond_1
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;

    move v1, p1

    move v2, p0

    move v3, p3

    move v4, p2

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;-><init>(IIIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;I)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 328
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V
    .locals 6
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "type"    # I
    .param p3, "c"    # Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

    .prologue
    const/4 v2, 0x0

    .line 218
    move v0, p0

    move v1, p1

    move v3, v2

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIIIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 219
    return-void
.end method

.method public static getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "artist"    # Ljava/lang/String;
    .param p1, "_album"    # Ljava/lang/String;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 118
    return-void
.end method

.method public static saveCovers([BII)Z
    .locals 12
    .param p0, "data"    # [B
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 36
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".covers"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_0

    .line 39
    const/4 v9, 0x2

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 41
    :cond_0
    const/4 v9, 0x0

    array-length v10, p0

    invoke-static {p0, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 44
    const/4 v9, 0x0

    .line 68
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return v9

    .line 47
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 48
    .local v4, "os":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .local v5, "s":Ljava/io/DataOutputStream;
    array-length v9, p0

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50
    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 52
    const/16 v9, 0xaa

    const/16 v10, 0xaa

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 53
    .local v6, "thumb1":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x50

    invoke-virtual {v6, v9, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 55
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 58
    const/16 v9, 0x64

    const/16 v10, 0x64

    const/4 v11, 0x0

    invoke-static {v6, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 59
    .local v7, "thumb2":Landroid/graphics/Bitmap;
    const/4 v9, 0x4

    invoke-static {v7, v9}, Lcom/vkcoffee/android/StackBlur;->blurBitmap(Landroid/graphics/Bitmap;I)V

    .line 60
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v7, v9, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 62
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 64
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "s":Ljava/io/DataOutputStream;
    .end local v6    # "thumb1":Landroid/graphics/Bitmap;
    .end local v7    # "thumb2":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v8

    .line 66
    .local v8, "x":Ljava/lang/Throwable;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static saveCoversFromFile(II)V
    .locals 13
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v11, 0x1

    .line 72
    invoke-static {p0, p1}, Lcom/vkcoffee/android/cache/AudioCache;->getCoverVersion(II)I

    move-result v10

    if-lt v10, v11, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".covers"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 80
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .local v7, "tagLen":I
    const/4 v8, 0x0

    .line 84
    .local v8, "tagRead":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v6, "tagBuf":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x2800

    new-array v0, v10, [B

    .line 86
    .local v0, "buf":[B
    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-lez v5, :cond_6

    .line 87
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    aget-byte v10, v0, v10

    const/16 v11, 0x44

    if-ne v10, v11, :cond_3

    const/4 v10, 0x2

    aget-byte v10, v0, v10

    const/16 v11, 0x33

    if-ne v10, v11, :cond_3

    .line 89
    const/16 v10, 0x9

    aget-byte v10, v0, v10

    const/16 v11, 0x8

    aget-byte v11, v0, v11

    shl-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    const/4 v11, 0x7

    aget-byte v11, v0, v11

    shl-int/lit8 v11, v11, 0xe

    or-int/2addr v10, v11

    const/4 v11, 0x6

    aget-byte v11, v0, v11

    shl-int/lit8 v11, v11, 0x15

    or-int v7, v10, v11

    .line 90
    add-int/lit8 v7, v7, 0x14

    .line 91
    const-string/jumbo v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found ID3v2 tag, len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const v10, 0xfa000

    if-ge v7, v10, :cond_3

    .line 93
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .end local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .restart local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :cond_3
    if-eqz v6, :cond_4

    if-ge v8, v7, :cond_4

    .line 97
    const/4 v10, 0x0

    sub-int v11, v7, v8

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v6, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 98
    add-int/2addr v8, v5

    .line 100
    :cond_4
    if-eqz v6, :cond_2

    if-lt v8, v7, :cond_2

    .line 101
    const-string/jumbo v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Tag read, len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v4, Lcom/vkcoffee/android/cache/ID3Parser;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/vkcoffee/android/cache/ID3Parser;-><init>([B)V

    .line 103
    .local v4, "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    const/4 v6, 0x0

    .line 104
    invoke-virtual {v4}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v10

    invoke-static {v10, p0, p1}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->saveCovers([BII)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 105
    invoke-static {p0, p1}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->broadcastCoverAvailable(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 111
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    .end local v5    # "read":I
    .end local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "tagLen":I
    .end local v8    # "tagRead":I
    :catch_0
    move-exception v9

    move-object v1, v2

    .line 112
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .local v9, "x":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v10, "vk"

    const-string/jumbo v11, "error saving covers"

    invoke-static {v10, v11, v9}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 107
    .end local v1    # "file":Ljava/io/File;
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    .restart local v5    # "read":I
    .restart local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "tagLen":I
    .restart local v8    # "tagRead":I
    :cond_5
    :try_start_2
    invoke-virtual {v4}, Lcom/vkcoffee/android/cache/ID3Parser;->getArtist()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbum()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p0, p1}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .end local v4    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    :cond_6
    move-object v1, v2

    .line 113
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto/16 :goto_0

    .line 111
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "read":I
    .end local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "tagLen":I
    .end local v8    # "tagRead":I
    :catch_1
    move-exception v9

    goto :goto_2
.end method
