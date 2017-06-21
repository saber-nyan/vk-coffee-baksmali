.class public Lcom/vk/attachpicker/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/util/BitmapUtils$BitmapSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static decodeBitmapFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "MAX_DIM"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v14, 0x0

    new-array v2, v14, [B

    .line 28
    .local v2, "byteArr":[B
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 30
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 34
    .local v3, "count":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "file"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 35
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 39
    .local v5, "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v14, -0x1

    if-le v7, v14, :cond_3

    .line 40
    if-eqz v7, :cond_0

    .line 41
    add-int v14, v3, v7

    array-length v15, v2

    if-le v14, v15, :cond_1

    .line 42
    add-int v14, v3, v7

    mul-int/lit8 v14, v14, 0x2

    new-array v8, v14, [B

    .line 43
    .local v8, "newbuf":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v14, v8, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    move-object v2, v8

    .line 47
    .end local v8    # "newbuf":[B
    :cond_1
    const/4 v14, 0x0

    invoke-static {v1, v14, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    add-int/2addr v3, v7

    goto :goto_0

    .line 37
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "len":I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 51
    .restart local v7    # "len":I
    :cond_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 53
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    const/4 v14, 0x0

    invoke-static {v2, v14, v3, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 58
    iget v11, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 59
    .local v11, "origWidth":I
    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 60
    .local v10, "origHeight":I
    move/from16 v0, p2

    if-gt v11, v0, :cond_4

    move/from16 v0, p2

    if-le v10, v0, :cond_6

    .line 61
    :cond_4
    const/4 v6, 0x1

    .line 62
    .local v6, "k":I
    move v12, v10

    .local v12, "tmpHeight":I
    move v13, v11

    .line 64
    .local v13, "tmpWidth":I
    :cond_5
    div-int/lit8 v13, v13, 0x2

    .line 65
    div-int/lit8 v12, v12, 0x2

    .line 66
    mul-int/lit8 v6, v6, 0x2

    .line 67
    div-int/lit8 v14, v13, 0x2

    move/from16 v0, p2

    if-ge v14, v0, :cond_5

    div-int/lit8 v14, v12, 0x2

    move/from16 v0, p2

    if-ge v14, v0, :cond_5

    .line 68
    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 73
    .end local v6    # "k":I
    .end local v12    # "tmpHeight":I
    .end local v13    # "tmpWidth":I
    :goto_1
    const/4 v14, 0x0

    iput-boolean v14, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v14, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 76
    const/4 v14, 0x0

    invoke-static {v2, v14, v3, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 80
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "len":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "origHeight":I
    .end local v11    # "origWidth":I
    :goto_2
    return-object v14

    .line 70
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "len":I
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "origHeight":I
    .restart local v11    # "origWidth":I
    :cond_6
    const/4 v14, 0x1

    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "len":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "origHeight":I
    .end local v11    # "origWidth":I
    :catch_0
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Throwable;
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public static decodeBitmapFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "inputStream":Ljava/io/InputStream;
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static getAspectRatio(Landroid/graphics/Bitmap;)F
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 167
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 170
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static getBitmapFromAsset(Ljava/lang/String;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "strName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 159
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 160
    .local v2, "istr":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 161
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 163
    return-object v1
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "angle"    # I

    .prologue
    .line 95
    if-nez p0, :cond_1

    .line 96
    const-string/jumbo v0, "BitmapUtils"

    const-string/jumbo v1, "Image cannot be rotated, because it\'s null"

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    const/4 p0, 0x0

    .line 112
    .end local p0    # "original":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 100
    .restart local p0    # "original":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p1, :cond_0

    .line 104
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 105
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "result":Landroid/graphics/Bitmap;
    move-object p0, v7

    .line 109
    goto :goto_0

    .line 110
    .end local v7    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 111
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, "BitmapUtils"

    invoke-static {v0, v8}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "desiredRes"    # I
    .param p2, "fast"    # Z

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const-string/jumbo v5, "BitmapUtils"

    const-string/jumbo v6, "Image cannot be resized, because it\'s null"

    invoke-static {v5, v6}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 122
    :cond_0
    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 123
    .local v3, "scaleW":F
    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 124
    .local v2, "scaleH":F
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 129
    .local v1, "scale":F
    if-eqz p2, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    const/4 v7, 0x1

    .line 130
    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 133
    .end local v0    # "result":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .restart local v0    # "result":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/vk/attachpicker/jni/Native;->resizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v0    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 139
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "BitmapUtils"

    invoke-static {v5, v4}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, p0

    .line 140
    goto :goto_0
.end method
