.class public Lnet/hockeyapp/android/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 182
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 183
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 184
    .local v4, "width":I
    const/4 v3, 0x1

    .line 186
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 187
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 188
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 192
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 193
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 197
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 152
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 156
    .local v2, "inputBounds":Ljava/io/InputStream;
    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 159
    invoke-static {v3, p2, p3}, Lnet/hockeyapp/android/utils/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 164
    .local v1, "inputBitmap":Ljava/io/InputStream;
    invoke-static {v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static decodeSampledBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 128
    invoke-static {v1, p1, p2}, Lnet/hockeyapp/android/utils/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static determineOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lnet/hockeyapp/android/utils/ImageUtils;->determineOrientation(Ljava/io/InputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 84
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static determineOrientation(Ljava/io/File;)I
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v0    # "input":Ljava/io/InputStream;
    .local v1, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lnet/hockeyapp/android/utils/ImageUtils;->determineOrientation(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 65
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return v2

    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2

    .end local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static determineOrientation(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 95
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    const/4 v4, 0x0

    invoke-static {p0, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 99
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 105
    :cond_1
    :goto_0
    return v2

    .line 104
    :cond_2
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 105
    .local v1, "ratio":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method
