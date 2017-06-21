.class public Lcom/vkcoffee/android/Emoji$EmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiDrawable"
.end annotation


# instance fields
.field private index:I

.field private page:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "index"    # I

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 261
    iput p1, p0, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->page:I

    .line 262
    iput p2, p0, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->index:I

    .line 263
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 267
    sget v4, Lcom/vkcoffee/android/Emoji;->SIZE:I

    .line 268
    .local v4, "size":I
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$100()Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->page:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 269
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$200()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 270
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$200()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 271
    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$200()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 273
    iget v5, p0, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->page:I

    invoke-static {v5}, Lcom/vkcoffee/android/Emoji;->access$400(I)V

    .line 280
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x15

    .line 276
    .local v1, "bmpSize":I
    iget v5, p0, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->index:I

    rem-int/lit8 v5, v5, 0x15

    mul-int v2, v5, v1

    .local v2, "partX":I
    iget v5, p0, Lcom/vkcoffee/android/Emoji$EmojiDrawable;->index:I

    div-int/lit8 v5, v5, 0x15

    mul-int v3, v5, v1

    .line 277
    .local v3, "partY":I
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$500()Landroid/graphics/Rect;

    move-result-object v5

    add-int v6, v2, v1

    add-int v7, v3, v1

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 278
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$500()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$200()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {}, Lcom/vkcoffee/android/Emoji;->access$600()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 285
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 290
    return-void
.end method
