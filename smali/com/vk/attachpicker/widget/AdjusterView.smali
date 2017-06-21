.class public Lcom/vk/attachpicker/widget/AdjusterView;
.super Landroid/view/View;
.source "AdjusterView.java"

# interfaces
.implements Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;
    }
.end annotation


# static fields
.field private static BLUE_COLOR:I = 0x0

.field private static GRAY_COLOR:I = 0x0

.field public static final MAX_ROTATION:F = 45.0f

.field public static final MAX_WIDTH:I

.field private static final intp:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private final alphas:[I

.field final bigLine2:I

.field private final bigLinePaint:Landroid/graphics/Paint;

.field final centerCircleRadius:I

.field final centerCircleTopOffset:I

.field private final centerLinePaint:Landroid/graphics/Paint;

.field private final circlePaint:Landroid/graphics/Paint;

.field private final coords:[F

.field protected degrees:F

.field final middleLine2:I

.field protected moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

.field protected scrollListener:Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

.field protected slicesCount:I

.field final smallLine2:I

.field private final smallLinePaint:Landroid/graphics/Paint;

.field private touchEnabled:Z

.field private transparentTouchListener:Landroid/view/View$OnTouchListener;

.field private final visibleSlicesCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/vk/attachpicker/widget/AdjusterView;->intp:Landroid/view/animation/AccelerateInterpolator;

    .line 17
    const/16 v0, 0x13b

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/AdjusterView;->MAX_WIDTH:I

    .line 20
    const v0, -0xa3631a

    sput v0, Lcom/vk/attachpicker/widget/AdjusterView;->BLUE_COLOR:I

    .line 21
    const v0, -0x6f6b67

    sput v0, Lcom/vk/attachpicker/widget/AdjusterView;->GRAY_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const/16 v0, 0xc8

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    .line 24
    const/16 v0, 0x38

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->visibleSlicesCount:I

    .line 26
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLine2:I

    .line 27
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->middleLine2:I

    .line 28
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLine2:I

    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleTopOffset:I

    .line 30
    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleRadius:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLinePaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    .line 43
    iput-boolean v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->touchEnabled:Z

    .line 188
    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    .line 189
    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    .line 48
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/16 v0, 0xc8

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    .line 24
    const/16 v0, 0x38

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->visibleSlicesCount:I

    .line 26
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLine2:I

    .line 27
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->middleLine2:I

    .line 28
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLine2:I

    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleTopOffset:I

    .line 30
    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleRadius:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLinePaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    .line 43
    iput-boolean v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->touchEnabled:Z

    .line 188
    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    .line 189
    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    .line 53
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/16 v0, 0xc8

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    .line 24
    const/16 v0, 0x38

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->visibleSlicesCount:I

    .line 26
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLine2:I

    .line 27
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->middleLine2:I

    .line 28
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLine2:I

    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleTopOffset:I

    .line 30
    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleRadius:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLinePaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    .line 43
    iput-boolean v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->touchEnabled:Z

    .line 188
    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    .line 189
    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->init()V

    .line 59
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    new-instance v0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;-><init>(Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    .line 64
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/AdjusterView;->GRAY_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/AdjusterView;->BLUE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/AdjusterView;->BLUE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/AdjusterView;->BLUE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    return-void
.end method

.method private initCoords(F)I
    .locals 20
    .param p1, "halfWidth"    # F

    .prologue
    .line 191
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    array-length v14, v14

    if-ge v8, v14, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    const/high16 v15, -0x40800000    # -1.0f

    aput v15, v14, v8

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/widget/AdjusterView;->getCurrentRotation()F

    move-result v14

    const/high16 v15, 0x42340000    # 45.0f

    div-float v11, v14, v15

    .line 196
    .local v11, "scrollPosition":F
    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v14, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float v2, v14, v15

    .line 197
    .local v2, "absoluteScroll":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    array-length v14, v14

    div-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, -0x1c

    int-to-float v14, v14

    const/high16 v15, 0x42600000    # 56.0f

    mul-float/2addr v15, v2

    add-float v9, v14, v15

    .line 198
    .local v9, "positionPlusOffset":F
    float-to-int v4, v9

    .line 199
    .local v4, "centerSlice":I
    int-to-float v14, v4

    sub-float v3, v9, v14

    .line 201
    .local v3, "centerOffset":F
    const v6, 0x3fa0d97c

    .line 202
    .local v6, "halfWidthCircleRot":F
    const/high16 v7, 0x41a00000    # 20.0f

    .line 204
    .local v7, "halfWidthDistance":F
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->slicesCount:I

    if-ge v8, v14, :cond_4

    .line 205
    if-nez v8, :cond_2

    .line 206
    move/from16 v0, p1

    float-to-double v14, v0

    const/high16 v16, 0x41a00000    # 20.0f

    div-float v16, v3, v16

    const v17, 0x3fa0d97c

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v5, v14

    .line 207
    .local v5, "delta":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    sub-float v15, p1, v5

    aput v15, v14, v4

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    const/16 v15, 0xff

    aput v15, v14, v4

    .line 204
    .end local v5    # "delta":F
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 210
    :cond_2
    sub-int v14, v4, v8

    if-ltz v14, :cond_3

    .line 211
    int-to-float v14, v8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v3

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    neg-float v14, v14

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v10, v14, v15

    .line 212
    .local v10, "scale":F
    const/4 v14, 0x0

    cmpg-float v14, v10, v14

    if-gtz v14, :cond_3

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v10, v14

    if-ltz v14, :cond_3

    .line 213
    const v14, 0x3fa0d97c

    mul-float/2addr v14, v10

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 214
    .local v12, "sin":D
    move/from16 v0, p1

    float-to-double v14, v0

    mul-double/2addr v14, v12

    double-to-float v5, v14

    .line 215
    .restart local v5    # "delta":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    sub-int v15, v4, v8

    add-float v16, p1, v5

    aput v16, v14, v15

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    sub-int v15, v4, v8

    sget-object v16, Lcom/vk/attachpicker/widget/AdjusterView;->intp:Landroid/view/animation/AccelerateInterpolator;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v16

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 219
    .end local v5    # "delta":F
    .end local v10    # "scale":F
    .end local v12    # "sin":D
    :cond_3
    add-int v14, v4, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    array-length v15, v15

    if-ge v14, v15, :cond_1

    .line 220
    int-to-float v14, v8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v3

    add-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v14, v15

    const/high16 v15, 0x41a00000    # 20.0f

    div-float v10, v14, v15

    .line 221
    .restart local v10    # "scale":F
    const/4 v14, 0x0

    cmpl-float v14, v10, v14

    if-ltz v14, :cond_1

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v10, v14

    if-gtz v14, :cond_1

    .line 222
    const v14, 0x3fa0d97c

    mul-float/2addr v14, v10

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 223
    .restart local v12    # "sin":D
    move/from16 v0, p1

    float-to-double v14, v0

    mul-double/2addr v14, v12

    double-to-float v5, v14

    .line 224
    .restart local v5    # "delta":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    add-int v15, v4, v8

    add-float v16, p1, v5

    aput v16, v14, v15

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    add-int v15, v4, v8

    sget-object v16, Lcom/vk/attachpicker/widget/AdjusterView;->intp:Landroid/view/animation/AccelerateInterpolator;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v16

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    goto/16 :goto_2

    .line 231
    .end local v5    # "delta":F
    .end local v10    # "scale":F
    .end local v12    # "sin":D
    :cond_4
    return v4
.end method


# virtual methods
.method public dropPosition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iput v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    .line 153
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->scrollListener:Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->scrollListener:Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;->onRotate(F)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->invalidate()V

    .line 157
    return-void
.end method

.method public getCurrentRotation()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    return v0
.end method

.method public getScrollListener()Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->scrollListener:Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    return-object v0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->touchEnabled:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/widget/AdjusterView;->initCoords(F)I

    move-result v6

    .line 164
    .local v6, "centerSlice":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLine2:I

    add-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 166
    .local v7, "cy":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    array-length v0, v0

    if-ge v8, v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    aget v0, v0, v8

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    aget v0, v0, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-ne v8, v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    aget v1, v0, v8

    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->middleLine2:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    aget v3, v0, v8

    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->middleLine2:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    aget v0, v0, v8

    iget v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->middleLine2:I

    add-int/2addr v1, v7

    iget v2, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleTopOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/AdjusterView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 166
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 174
    :cond_1
    if-le v8, v6, :cond_2

    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-lt v8, v0, :cond_3

    :cond_2
    if-gt v8, v6, :cond_4

    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-le v8, v0, :cond_4

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/AdjusterView;->BLUE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    :goto_2
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->alphas:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    aget v1, v0, v8

    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLine2:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->coords:[F

    aget v3, v0, v8

    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLine2:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->smallLinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/AdjusterView;->GRAY_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 185
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLine2:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/vk/attachpicker/widget/AdjusterView;->bigLine2:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/AdjusterView;->centerLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v1, Lcom/vk/attachpicker/widget/AdjusterView;->MAX_WIDTH:I

    if-le v0, v1, :cond_0

    .line 82
    sget v0, Lcom/vk/attachpicker/widget/AdjusterView;->MAX_WIDTH:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 85
    return-void
.end method

.method public onMove(FF)V
    .locals 6
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/high16 v5, 0x42340000    # 45.0f

    .line 134
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 135
    .local v2, "viewWidth":F
    neg-float v3, p1

    div-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float v1, v5, v3

    .line 137
    .local v1, "rotationDelta":F
    iget v3, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    add-float v0, v3, v1

    .line 138
    .local v0, "newRot":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    .line 139
    iget v3, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/vk/attachpicker/widget/AdjusterView;->scrollListener:Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/vk/attachpicker/widget/AdjusterView;->scrollListener:Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    iget v4, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    invoke-interface {v3, v4}, Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;->onRotate(F)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->invalidate()V

    .line 149
    return-void

    .line 140
    :cond_1
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 141
    iput v5, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    goto :goto_0

    .line 143
    :cond_2
    const/high16 v3, -0x3dcc0000    # -45.0f

    iput v3, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/AdjusterView;->touchEnabled:Z

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return v1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/widget/AdjusterView;->transparentTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/vk/attachpicker/widget/AdjusterView;->transparentTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 125
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/widget/AdjusterView;->moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    invoke-virtual {v2, p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentScroll(F)V
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->degrees:F

    .line 89
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AdjusterView;->invalidate()V

    .line 90
    return-void
.end method

.method public setScrollListener(Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;)V
    .locals 0
    .param p1, "scrollListener"    # Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->scrollListener:Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    .line 114
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->touchEnabled:Z

    .line 102
    return-void
.end method

.method public setTransparentTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "transparentTouchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vk/attachpicker/widget/AdjusterView;->transparentTouchListener:Landroid/view/View$OnTouchListener;

    .line 98
    return-void
.end method
