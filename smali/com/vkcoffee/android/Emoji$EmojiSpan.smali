.class public Lcom/vkcoffee/android/Emoji$EmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiSpan"
.end annotation


# instance fields
.field private index:I

.field private page:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "index"    # I

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 303
    iput p1, p0, Lcom/vkcoffee/android/Emoji$EmojiSpan;->page:I

    .line 304
    iput p2, p0, Lcom/vkcoffee/android/Emoji$EmojiSpan;->index:I

    .line 306
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$100()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 307
    invoke-static {p1}, Lcom/vkcoffee/android/Emoji;->access$400(I)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 324
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v11, v1

    .line 325
    .local v11, "size":I
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$100()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/Emoji$EmojiSpan;->page:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 326
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 327
    sub-int v1, p8, v11

    int-to-float v3, v1

    int-to-float v1, v11

    add-float v4, p5, v1

    move/from16 v0, p8

    int-to-float v5, v0

    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    move/from16 v2, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 328
    iget v1, p0, Lcom/vkcoffee/android/Emoji$EmojiSpan;->page:I

    invoke-static {v1}, Lcom/vkcoffee/android/Emoji;->access$400(I)V

    .line 336
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v8, v1, 0x15

    .line 331
    .local v8, "bmpSize":I
    iget v1, p0, Lcom/vkcoffee/android/Emoji$EmojiSpan;->index:I

    rem-int/lit8 v1, v1, 0x15

    mul-int v9, v1, v8

    .local v9, "partX":I
    iget v1, p0, Lcom/vkcoffee/android/Emoji$EmojiSpan;->index:I

    div-int/lit8 v1, v1, 0x15

    mul-int v10, v1, v8

    .line 332
    .local v10, "partY":I
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$500()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, v9, v8

    add-int v3, v10, v8

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$200()Landroid/graphics/Rect;

    move-result-object v1

    move/from16 v0, p5

    float-to-int v2, v0

    sub-int v3, p8, v11

    move/from16 v0, p5

    float-to-int v4, v0

    add-int/2addr v4, v11

    move/from16 v0, p8

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 334
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$500()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$200()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$600()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "charSequence"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "metrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 313
    if-eqz p5, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 315
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 317
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
