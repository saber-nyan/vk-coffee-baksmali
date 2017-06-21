.class public Lcom/vkcoffee/android/ui/RatingView;
.super Landroid/view/View;
.source "RatingView.java"


# static fields
.field private static final STAR_MARGIN:I

.field private static final STAR_SIZE:I


# instance fields
.field private emptyPaint:Landroid/graphics/Paint;

.field private filledPaint:Landroid/graphics/Paint;

.field private rating:F

.field private star:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x4161999a    # 14.1f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/RatingView;->STAR_SIZE:I

    .line 22
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/RatingView;->STAR_MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/RatingView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/RatingView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/RatingView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 22

    .prologue
    .line 40
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    .line 41
    const-wide/high16 v18, 0x4052000000000000L    # 72.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 42
    .local v8, "theta":D
    const-wide/high16 v18, 0x4042000000000000L    # 36.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 43
    .local v2, "delta":D
    sget v5, Lcom/vkcoffee/android/ui/RatingView;->STAR_SIZE:I

    div-int/lit8 v5, v5, 0x2

    int-to-double v6, v5

    .line 44
    .local v6, "r":D
    move-wide v12, v6

    .line 45
    .local v12, "xCenter":D
    move-wide/from16 v16, v6

    .line 46
    .local v16, "yCenter":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    double-to-float v0, v12

    move/from16 v18, v0

    neg-double v0, v6

    move-wide/from16 v20, v0

    add-double v20, v20, v16

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 48
    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v10, v6, v18

    .line 49
    .local v10, "x":D
    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v14, v6, v18

    .line 50
    .local v14, "y":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    neg-double v0, v10

    move-wide/from16 v18, v0

    add-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    neg-double v0, v14

    move-wide/from16 v20, v0

    add-double v20, v20, v16

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    add-double v18, v18, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    const-wide v20, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double v10, v18, v20

    .line 52
    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    add-double v18, v18, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    const-wide v20, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double v14, v18, v20

    .line 53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    neg-double v0, v10

    move-wide/from16 v18, v0

    add-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    neg-double v0, v14

    move-wide/from16 v20, v0

    add-double v20, v20, v16

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 55
    .end local v10    # "x":D
    .end local v14    # "y":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 56
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->filledPaint:Landroid/graphics/Paint;

    .line 57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->filledPaint:Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->filledPaint:Landroid/graphics/Paint;

    const v18, -0x747171

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->emptyPaint:Landroid/graphics/Paint;

    .line 60
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->emptyPaint:Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/RatingView;->emptyPaint:Landroid/graphics/Paint;

    const v18, -0x242425

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 71
    iget v2, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    iget v4, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 72
    .local v1, "isFraction":Z
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RatingView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/vkcoffee/android/ui/RatingView;->STAR_SIZE:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    sget v2, Lcom/vkcoffee/android/ui/RatingView;->STAR_SIZE:I

    mul-int/2addr v2, v0

    sget v3, Lcom/vkcoffee/android/ui/RatingView;->STAR_MARGIN:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RatingView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    if-eqz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    int-to-double v2, v2

    iget v4, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    sget v2, Lcom/vkcoffee/android/ui/RatingView;->STAR_SIZE:I

    int-to-double v2, v2

    iget v4, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    float-to-double v4, v4

    iget v6, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v8, v8, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 79
    iget-object v2, p0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/RatingView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    sget v2, Lcom/vkcoffee/android/ui/RatingView;->STAR_SIZE:I

    int-to-double v2, v2

    iget v4, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    float-to-double v4, v4

    iget v6, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v8, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 82
    iget-object v2, p0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/RatingView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 86
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "i":I
    .end local v1    # "isFraction":Z
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 84
    .restart local v0    # "i":I
    .restart local v1    # "isFraction":Z
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/RatingView;->star:Landroid/graphics/Path;

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    iget v4, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/RatingView;->filledPaint:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ui/RatingView;->emptyPaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 88
    :cond_3
    return-void
.end method

.method public setRating(F)V
    .locals 0
    .param p1, "rating"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/vkcoffee/android/ui/RatingView;->rating:F

    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RatingView;->invalidate()V

    .line 67
    return-void
.end method
