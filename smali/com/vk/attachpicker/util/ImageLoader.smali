.class public Lcom/vk/attachpicker/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final MAX_DIM:I

.field private static final TAG:Ljava/lang/String; = "DiskImageLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x438

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realHeight()I

    move-result v1

    const/16 v2, 0x5a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/util/ImageLoader;->MAX_DIM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 89
    sget v0, Lcom/vk/attachpicker/util/ImageLoader;->MAX_DIM:I

    invoke-static {p0, v0}, Lcom/vk/attachpicker/util/ImageLoader;->getDisplayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p1, "desiredDimension"    # I

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-boolean v6, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-nez v6, :cond_1

    .line 95
    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-static {v6, v7, p1}, Lcom/vk/attachpicker/util/BitmapUtils;->decodeBitmapFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    invoke-static {v0, v6}, Lcom/vk/attachpicker/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 99
    .local v3, "res":Landroid/graphics/Bitmap;
    if-eq v3, v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    move-object v0, v3

    .line 134
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "res":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DiskImageLoader"

    invoke-static {v6, v1}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 106
    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 111
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 113
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    iget-object v6, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 114
    const-wide/16 v6, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 115
    if-nez v0, :cond_2

    .line 128
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-object v0, v5

    .line 131
    goto :goto_0

    .line 117
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v6, p1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, p1, :cond_5

    .line 118
    :cond_3
    const/4 v6, 0x1

    invoke-static {v0, p1, v6}, Lcom/vk/attachpicker/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 119
    .restart local v3    # "res":Landroid/graphics/Bitmap;
    if-eq v0, v3, :cond_4

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :cond_4
    move-object v0, v3

    .line 128
    .end local v3    # "res":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 129
    :catch_1
    move-exception v5

    goto :goto_0

    .line 124
    :catch_2
    move-exception v2

    .line 128
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    move-object v0, v5

    .line 131
    goto :goto_0

    .line 127
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 128
    :try_start_6
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 131
    :goto_3
    throw v5

    .line 129
    :catch_3
    move-exception v6

    goto :goto_1

    .restart local v2    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    goto :goto_3
.end method

.method public static getDisplayImage(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    sget v5, Lcom/vk/attachpicker/util/ImageLoader;->MAX_DIM:I

    invoke-static {v3, v4, v5}, Lcom/vk/attachpicker/util/BitmapUtils;->decodeBitmapFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/vk/attachpicker/util/Exif;->getOrientation(Ljava/io/File;)I

    move-result v2

    .line 80
    .local v2, "exifOrientation":I
    invoke-static {v0, v2}, Lcom/vk/attachpicker/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "exifOrientation":I
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DiskImageLoader"

    invoke-static {v3, v1}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getThumbnailImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/vk/attachpicker/util/ImageLoader;->getThumbnailImageFromMediaStore(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 24
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 26
    :try_start_0
    iget-boolean v3, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v3, :cond_1

    .line 28
    iget-object v3, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    .line 30
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/vk/attachpicker/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/vk/attachpicker/util/BitmapUtils;->decodeBitmapFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    invoke-static {v0, v3}, Lcom/vk/attachpicker/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    goto :goto_0

    .line 38
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 40
    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    move-object v0, v2

    .line 43
    goto :goto_0
.end method

.method private static getThumbnailImageFromMediaStore(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 51
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v4, 0x200

    .line 53
    .local v4, "w":I
    const/4 v5, 0x1

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 54
    :goto_0
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    if-le v4, v5, :cond_1

    .line 55
    div-int/lit8 v4, v4, 0x2

    .line 56
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 71
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "w":I
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0

    .line 60
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "w":I
    :cond_1
    iget-boolean v5, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v5, :cond_2

    .line 61
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget v5, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    invoke-static {v0, v5}, Lcom/vk/attachpicker/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 66
    .local v3, "res":Landroid/graphics/Bitmap;
    if-eq v3, v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    move-object v0, v3

    goto :goto_1

    .line 63
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "res":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2
.end method
