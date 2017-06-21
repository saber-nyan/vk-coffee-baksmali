.class public Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;
.super Landroid/text/style/ImageSpan;
.source "CenteredImageSpan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableRes"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 45
    .local v1, "drawableHeight":I
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v2, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 46
    .local v2, "fontAscent":I
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v3, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 47
    .local v3, "fontDescent":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p8, v5

    sub-int v6, v1, v3

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 50
    .local v4, "transY":I
    int-to-float v5, v4

    invoke-virtual {p1, p5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 24
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 27
    .local v0, "pfm":Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 28
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 29
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 30
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 33
    .end local v0    # "pfm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method
