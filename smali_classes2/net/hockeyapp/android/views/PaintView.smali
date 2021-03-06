.class public Lnet/hockeyapp/android/views/PaintView;
.super Landroid/widget/ImageView;
.source "PaintView.java"


# static fields
.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mX:F

.field private mY:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private paths:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I

    .prologue
    const/4 v2, 0x1

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    .line 153
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    .line 155
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 157
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 160
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 161
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/PaintView;->setAdjustViewBounds(Z)V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, p3, p4}, Lnet/hockeyapp/android/views/PaintView;->decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/PaintView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HockeyApp"

    const-string/jumbo v2, "Could not load image into ImageView."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 94
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 95
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 96
    .local v4, "width":I
    const/4 v3, 0x1

    .line 98
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 100
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 101
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 105
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 106
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 110
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private static decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
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

    .line 127
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 131
    .local v2, "inputBounds":Ljava/io/InputStream;
    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 134
    invoke-static {v3, p2, p3}, Lnet/hockeyapp/android/views/PaintView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 139
    .local v1, "inputBitmap":Ljava/io/InputStream;
    invoke-static {v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static determineOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 64
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 68
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 69
    .local v1, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 72
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 73
    .local v3, "ratio":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    const/4 v4, 0x0

    .line 77
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "ratio":F
    :cond_0
    :goto_0
    return v4

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "HockeyApp"

    const-string/jumbo v6, "Unable to determine necessary screen orientation."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private touchMove(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 211
    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 212
    .local v0, "dx":F
    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 213
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 214
    :cond_0
    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget v3, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iget v4, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    iget v5, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 215
    iput p1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    .line 216
    iput p2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    .line 218
    :cond_1
    return-void
.end method

.method private touchStart(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 204
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 205
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iput p1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    .line 207
    iput p2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    .line 208
    return-void
.end method

.method private touchUp()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    .line 224
    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 176
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    .line 177
    return-void
.end method

.method public isClear()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 196
    .local v0, "path":Landroid/graphics/Path;
    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 200
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 201
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 229
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 231
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 245
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 233
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/views/PaintView;->touchStart(FF)V

    .line 234
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    .line 237
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/views/PaintView;->touchMove(FF)V

    .line 238
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-direct {p0}, Lnet/hockeyapp/android/views/PaintView;->touchUp()V

    .line 242
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    .line 184
    :cond_0
    return-void
.end method
