.class final Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;
.super Ljava/lang/Object;
.source "AlbumArtRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIIIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aid:I

.field final synthetic val$callback:Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

.field final synthetic val$oid:I

.field final synthetic val$oldAid:I

.field final synthetic val$oldOid:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(IIIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    iput p2, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    iput p3, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oldOid:I

    iput p4, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oldAid:I

    iput-object p5, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

    iput p6, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 255
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".covers"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oldOid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oldAid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".covers"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v3, "file2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 258
    move-object v2, v3

    .line 259
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 260
    iget-object v9, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

    iget v10, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v9, v10, v11}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->notAvailable(II)V

    .line 327
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "file2":Ljava/io/File;
    :goto_0
    return-void

    .line 264
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "file2":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 265
    .local v4, "is":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 283
    .local v7, "s":Ljava/io/DataInputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 284
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_1

    .line 285
    const/4 v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 287
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;-><init>(Lcom/vkcoffee/android/cache/AlbumArtRetriever$1;)V

    .line 288
    .local v1, "ch":Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 289
    .local v5, "l":I
    new-array v0, v5, [B

    .line 290
    .local v0, "buf":[B
    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 291
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    .line 292
    sget-boolean v9, Lcom/vkcoffee/android/SystemUtils;->IS_ART_RUNTIME:Z

    if-nez v9, :cond_2

    .line 293
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 295
    :cond_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 296
    new-array v0, v5, [B

    .line 297
    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 298
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    .line 299
    sget-boolean v9, Lcom/vkcoffee/android/SystemUtils;->IS_ART_RUNTIME:Z

    if-nez v9, :cond_3

    .line 300
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 302
    :cond_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 303
    new-array v0, v5, [B

    .line 304
    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 305
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    .line 306
    sget-boolean v9, Lcom/vkcoffee/android/SystemUtils;->IS_ART_RUNTIME:Z

    if-nez v9, :cond_4

    .line 307
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 309
    :cond_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 310
    iget v9, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    iput v9, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->aid:I

    .line 311
    iget v9, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    iput v9, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->oid:I

    .line 312
    invoke-static {}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->access$200()Lcom/vkcoffee/android/cache/LruCache;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/vkcoffee/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget v9, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$type:I

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_0

    .line 315
    :pswitch_0
    iget-object v9, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

    iget-object v10, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v12, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v9, v10, v11, v12}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 324
    .end local v0    # "buf":[B
    .end local v1    # "ch":Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "file2":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "l":I
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "s":Ljava/io/DataInputStream;
    :catch_0
    move-exception v8

    .line 325
    .local v8, "x":Ljava/lang/Throwable;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 318
    .end local v8    # "x":Ljava/lang/Throwable;
    .restart local v0    # "buf":[B
    .restart local v1    # "ch":Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "file2":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "l":I
    .restart local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "s":Ljava/io/DataInputStream;
    :pswitch_1
    :try_start_1
    iget-object v9, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

    iget-object v10, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v12, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v9, v10, v11, v12}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 321
    :pswitch_2
    iget-object v9, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;

    iget-object v10, v1, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    iget v11, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v12, p0, Lcom/vkcoffee/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v9, v10, v11, v12}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
