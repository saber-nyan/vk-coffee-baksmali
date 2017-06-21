.class public Lcom/fourmob/datetimepicker/time/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mBlack:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mWhite:I

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/fourmob/datetimepicker/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mWhite:I

    .line 51
    sget v1, Lcom/fourmob/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mBlack:I

    .line 52
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mIsInitialized:Z

    .line 55
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is24HourMode"    # Z

    .prologue
    .line 58
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "CircleView"

    const-string/jumbo v2, "CircleView may only be initialized once."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean p2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mIs24HourMode:Z

    .line 65
    if-eqz p2, :cond_1

    .line 66
    sget v1, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier_24HourMode:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 75
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mIsInitialized:Z

    goto :goto_0

    .line 69
    :cond_1
    sget v1, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 71
    sget v1, Lcom/fourmob/datetimepicker/R$string;->ampm_circle_radius_multiplier:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/CircleView;->getWidth()I

    move-result v1

    .line 82
    .local v1, "viewWidth":I
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    if-nez v2, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/CircleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mXCenter:I

    .line 88
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mYCenter:I

    .line 89
    iget v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mXCenter:I

    iget v3, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mCircleRadius:I

    .line 91
    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 95
    iget v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 96
    .local v0, "amPmCircleRadius":I
    iget v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mYCenter:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mYCenter:I

    .line 99
    .end local v0    # "amPmCircleRadius":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mWhite:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mBlack:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget v2, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/fourmob/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
