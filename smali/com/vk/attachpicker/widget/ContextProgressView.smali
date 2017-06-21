.class public Lcom/vk/attachpicker/widget/ContextProgressView;
.super Landroid/view/View;
.source "ContextProgressView.java"


# instance fields
.field private final arcPaint:Landroid/graphics/Paint;

.field private final border:I

.field private final circleRect:Landroid/graphics/RectF;

.field private lastMinSide:I

.field private lastUpdateTime:J

.field private radOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->radOffset:I

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->circleRect:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    .line 18
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->border:I

    .line 23
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->radOffset:I

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->circleRect:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    .line 18
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->border:I

    .line 28
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->radOffset:I

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->circleRect:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    .line 18
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->border:I

    .line 33
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/attachpicker/util/Utils;->getThemeAccentColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->border:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->lastUpdateTime:J

    .line 54
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->invalidate()V

    .line 55
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 65
    .local v10, "newTime":J
    iget-wide v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->lastUpdateTime:J

    sub-long v6, v10, v0

    .line 66
    .local v6, "dt":J
    iput-wide v10, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->lastUpdateTime:J

    .line 67
    iget v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->radOffset:I

    int-to-float v0, v0

    const-wide/16 v2, 0x168

    mul-long/2addr v2, v6

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->radOffset:I

    .line 69
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->border:I

    sub-int v9, v0, v1

    .line 71
    .local v9, "minSide":I
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->circleRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 72
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v9, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 73
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v9, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 74
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v5, v12

    int-to-float v5, v5

    .line 71
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->lastMinSide:I

    if-eq v0, v9, :cond_1

    .line 77
    iput v9, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->lastMinSide:I

    .line 78
    new-instance v8, Landroid/graphics/SweepGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-direct {v8, v0, v1, v4, v2}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 79
    .local v8, "gradient":Landroid/graphics/Shader;
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 81
    .end local v8    # "gradient":Landroid/graphics/Shader;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    iget v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->radOffset:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 83
    iget-object v1, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->circleRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->arcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->invalidate()V

    goto/16 :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/attachpicker/widget/ContextProgressView;->lastUpdateTime:J

    .line 47
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContextProgressView;->invalidate()V

    .line 48
    return-void
.end method
