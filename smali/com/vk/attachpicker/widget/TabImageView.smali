.class public Lcom/vk/attachpicker/widget/TabImageView;
.super Landroid/widget/ImageView;
.source "TabImageView.java"


# instance fields
.field private final DP8:I

.field private final bgCircle:Landroid/graphics/Paint;

.field private colorNotSelected:I

.field private colorSelected:I

.field private selection:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->DP8:I

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->bgCircle:Landroid/graphics/Paint;

    .line 25
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabImageView;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->DP8:I

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->bgCircle:Landroid/graphics/Paint;

    .line 30
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabImageView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->DP8:I

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->bgCircle:Landroid/graphics/Paint;

    .line 35
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabImageView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const v0, 0x7f0f0079

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->colorNotSelected:I

    .line 40
    const v0, 0x7f0f007a

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->colorSelected:I

    .line 41
    return-void
.end method


# virtual methods
.method public getSelection()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/vk/attachpicker/widget/TabImageView;->selection:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TabImageView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TabImageView;->getPaddingRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 46
    .local v3, "wr":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TabImageView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TabImageView;->getPaddingBottom()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v1, v4, v5

    .line 47
    .local v1, "hr":I
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/vk/attachpicker/widget/TabImageView;->DP8:I

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/vk/attachpicker/widget/TabImageView;->selection:F

    sub-float/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/vk/attachpicker/util/Utils;->interpolate(IIF)I

    move-result v5

    sub-int v2, v4, v5

    .line 49
    .local v2, "r":I
    iget v4, p0, Lcom/vk/attachpicker/widget/TabImageView;->colorNotSelected:I

    iget v5, p0, Lcom/vk/attachpicker/widget/TabImageView;->colorSelected:I

    iget v6, p0, Lcom/vk/attachpicker/widget/TabImageView;->selection:F

    invoke-static {v4, v5, v6}, Lcom/vk/attachpicker/util/Utils;->interpolateColors(IIF)I

    move-result v0

    .line 50
    .local v0, "color":I
    iget-object v4, p0, Lcom/vk/attachpicker/widget/TabImageView;->bgCircle:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    int-to-float v6, v2

    iget-object v7, p0, Lcom/vk/attachpicker/widget/TabImageView;->bgCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method

.method public setSelection(F)V
    .locals 0
    .param p1, "selection"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/vk/attachpicker/widget/TabImageView;->selection:F

    .line 63
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TabImageView;->invalidate()V

    .line 64
    return-void
.end method

.method public setSelection(IIF)V
    .locals 1
    .param p1, "holderPosition"    # I
    .param p2, "realCurrentPage"    # I
    .param p3, "positionOffset"    # F

    .prologue
    .line 67
    if-ne p1, p2, :cond_0

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TabImageView;->setSelection(F)V

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    add-int/lit8 v0, p2, 0x1

    if-ne p1, v0, :cond_1

    .line 70
    invoke-virtual {p0, p3}, Lcom/vk/attachpicker/widget/TabImageView;->setSelection(F)V

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TabImageView;->setSelection(F)V

    goto :goto_0
.end method
