.class public Lcom/vkcoffee/android/ui/AudioSquareImageView;
.super Landroid/widget/ImageView;
.source "AudioSquareImageView.java"


# instance fields
.field private opB:I

.field private opL:I

.field private opR:I

.field private opT:I

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 58
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/AlbumScrollView;

    .line 36
    .local v1, "sv":Lcom/vkcoffee/android/ui/AlbumScrollView;
    iget v3, v1, Lcom/vkcoffee/android/ui/AlbumScrollView;->heightMSpec:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/AlbumScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int v0, v3, v4

    .line 37
    .local v0, "sh":I
    iget v3, v1, Lcom/vkcoffee/android/ui/AlbumScrollView;->widthMSpec:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 38
    .local v2, "sw":I
    iget v3, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opL:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingLeft()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opL:I

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingRight()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opR:I

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingTop()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opT:I

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->getPaddingBottom()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opB:I

    .line 44
    :cond_0
    if-ge v0, v2, :cond_1

    .line 45
    invoke-virtual {p0, v0, v0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->setMeasuredDimension(II)V

    .line 46
    iput v5, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->padding:I

    .line 51
    :goto_0
    iget v3, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opL:I

    iget v4, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opT:I

    iget v5, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->padding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opR:I

    iget v6, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->opB:I

    iget v7, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->padding:I

    add-int/2addr v6, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->setPadding(IIII)V

    .line 52
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/vkcoffee/android/ui/AudioSquareImageView;->setMeasuredDimension(II)V

    .line 49
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/vkcoffee/android/ui/AudioSquareImageView;->padding:I

    goto :goto_0
.end method
