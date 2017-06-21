.class public Lcom/vkcoffee/android/ui/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;
    }
.end annotation


# static fields
.field private static final IND_LOOP_TIME:I = 0xdac

.field private static final IND_TRANS_TIME:I = 0x12c

.field private static shadow:Landroid/graphics/Bitmap;


# instance fields
.field private animStartTime:J

.field private animatedProgressValue:D

.field private animationProgressStart:D

.field private bgPaint:Landroid/graphics/Paint;

.field private blackBgPaint:Landroid/graphics/Paint;

.field private currentProgressTime:J

.field private ditp:Landroid/view/animation/DecelerateInterpolator;

.field private erasePaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private itp:Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:D

.field private startAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;-><init>(Lcom/vkcoffee/android/ui/CircularProgressBar;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->itp:Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->startAlpha:I

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->interpolator:Landroid/view/animation/Interpolator;

    .line 35
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;-><init>(Lcom/vkcoffee/android/ui/CircularProgressBar;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->itp:Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->startAlpha:I

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->interpolator:Landroid/view/animation/Interpolator;

    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;-><init>(Lcom/vkcoffee/android/ui/CircularProgressBar;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->itp:Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->startAlpha:I

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->interpolator:Landroid/view/animation/Interpolator;

    .line 45
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    const/4 v2, 0x1

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->progress:D

    .line 58
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    const v1, 0x30ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getWidth()I

    move-result v8

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    sub-int/2addr v8, v10

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getHeight()I

    move-result v10

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v5, v6, v7, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    .local v5, "arcRect":Landroid/graphics/RectF;
    sget-object v6, Lcom/vkcoffee/android/ui/CircularProgressBar;->shadow:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/vkcoffee/android/ui/CircularProgressBar;->shadow:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    sget-object v6, Lcom/vkcoffee/android/ui/CircularProgressBar;->shadow:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 89
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/vkcoffee/android/ui/CircularProgressBar;->shadow:Landroid/graphics/Bitmap;

    .line 90
    new-instance v4, Landroid/graphics/Canvas;

    sget-object v6, Lcom/vkcoffee/android/ui/CircularProgressBar;->shadow:Landroid/graphics/Bitmap;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    invoke-direct {v9, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 92
    .local v9, "shadowPaint":Landroid/graphics/Paint;
    const/high16 v6, -0x1000000

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x30000000

    invoke-virtual {v9, v6, v7, v8, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 94
    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 95
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x3b000000    # 0.001953125f

    invoke-virtual {v9, v6, v7, v8, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 96
    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 97
    new-instance v15, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    invoke-direct {v15, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 98
    .local v15, "clearPaint":Landroid/graphics/Paint;
    const/high16 v6, -0x1000000

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    const/4 v6, 0x5

    move/from16 v0, v26

    if-ge v0, v6, :cond_1

    .line 101
    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v14, 0x0

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 100
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 104
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "shadowPaint":Landroid/graphics/Paint;
    .end local v15    # "clearPaint":Landroid/graphics/Paint;
    .end local v26    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->progress:D

    const-wide/16 v10, 0x0

    cmpl-double v6, v6, v10

    if-nez v6, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    .line 108
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    sub-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v22, v0

    .line 109
    .local v22, "animTime":I
    move/from16 v0, v22

    int-to-float v6, v0

    const v7, 0x455ac000    # 3500.0f

    div-float v23, v6, v7

    .line 116
    .local v23, "at":F
    sget-object v6, Lcom/vkcoffee/android/ui/CircularProgressBar;->shadow:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    const/16 v18, 0x0

    const/high16 v19, 0x43b40000    # 360.0f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressBar;->yforx(F)I

    move-result v7

    add-int/lit8 v7, v7, 0x2e

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    const/16 v18, 0x0

    const/high16 v19, 0x43b40000    # 360.0f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->postInvalidate()V

    .line 149
    .end local v22    # "animTime":I
    .end local v23    # "at":F
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 150
    .local v28, "newTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->lastUpdateTime:J

    sub-long v24, v28, v6

    .line 151
    .local v24, "dt":J
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkcoffee/android/ui/CircularProgressBar;->lastUpdateTime:J

    .line 152
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->progress:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animationProgressStart:D

    sub-double v32, v6, v10

    .line 153
    .local v32, "progressDiff":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v32, v6

    if-lez v6, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->currentProgressTime:J

    add-long v6, v6, v24

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->currentProgressTime:J

    .line 155
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->currentProgressTime:J

    const-wide/16 v10, 0x12c

    cmp-long v6, v6, v10

    if-ltz v6, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->progress:D

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animatedProgressValue:D

    .line 157
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->progress:D

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animationProgressStart:D

    .line 158
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->currentProgressTime:J

    .line 162
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->postInvalidate()V

    .line 164
    :cond_3
    return-void

    .line 122
    .end local v24    # "dt":J
    .end local v28    # "newTime":J
    .end local v32    # "progressDiff":D
    :cond_4
    const/16 v30, 0x0

    .line 123
    .local v30, "posted":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    const/16 v7, 0x60

    if-eq v6, v7, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-nez v6, :cond_5

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    .line 126
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->startAlpha:I

    .line 128
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    sub-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v22, v0

    .line 129
    .restart local v22    # "animTime":I
    move/from16 v0, v22

    int-to-float v6, v0

    const v7, 0x455ac000    # 3500.0f

    div-float v23, v6, v7

    .line 130
    .restart local v23    # "at":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v27

    .line 131
    .local v27, "it":F
    const/16 v6, 0x12c

    move/from16 v0, v22

    if-lt v0, v6, :cond_7

    .line 132
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    .line 133
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    const/16 v7, 0x60

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    .end local v22    # "animTime":I
    .end local v23    # "at":F
    .end local v27    # "it":F
    :cond_6
    :goto_3
    sget-object v6, Lcom/vkcoffee/android/ui/CircularProgressBar;->shadow:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    const/16 v18, 0x0

    const/high16 v19, 0x43b40000    # 360.0f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 142
    const/16 v18, 0x0

    const/high16 v19, 0x43b40000    # 360.0f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 143
    const/high16 v18, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animatedProgressValue:D

    const-wide v10, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 135
    .restart local v22    # "animTime":I
    .restart local v23    # "at":F
    .restart local v27    # "it":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->startAlpha:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->startAlpha:I

    rsub-int/lit8 v8, v8, 0x60

    int-to-float v8, v8

    mul-float v8, v8, v27

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->postInvalidate()V

    .line 137
    const/16 v30, 0x1

    goto :goto_3

    .line 160
    .end local v22    # "animTime":I
    .end local v23    # "at":F
    .end local v27    # "it":F
    .end local v30    # "posted":Z
    .restart local v24    # "dt":J
    .restart local v28    # "newTime":J
    .restart local v32    # "progressDiff":D
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animationProgressStart:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->currentProgressTime:J

    long-to-float v10, v10

    const/high16 v11, 0x43960000    # 300.0f

    div-float/2addr v10, v11

    invoke-interface {v8, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    float-to-double v10, v8

    mul-double v10, v10, v32

    add-double/2addr v6, v10

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animatedProgressValue:D

    goto/16 :goto_2
.end method

.method public setProgress(D)V
    .locals 5
    .param p1, "p"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 77
    iput-wide p1, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->progress:D

    .line 78
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animatedProgressValue:D

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animationProgressStart:D

    .line 79
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->currentProgressTime:J

    .line 80
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 81
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/CircularProgressBar;->animStartTime:J

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->postInvalidate()V

    .line 84
    return-void
.end method

.method yforx(F)I
    .locals 6
    .param p1, "x"    # F

    .prologue
    .line 167
    const-wide v0, -0x3fa8800000000000L    # -94.0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
