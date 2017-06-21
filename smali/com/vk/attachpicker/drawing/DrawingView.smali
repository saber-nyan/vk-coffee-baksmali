.class public Lcom/vk/attachpicker/drawing/DrawingView;
.super Landroid/view/View;
.source "DrawingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;,
        Lcom/vk/attachpicker/drawing/DrawingView$Mode;
    }
.end annotation


# static fields
.field private static final MINOR_MOVE:I

.field private static final TOUCH_OFFSET:I


# instance fields
.field private baseColor:I

.field private final currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

.field private final currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

.field private final drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

.field private fixTouchPosition:Z

.field private isDown:Z

.field private isMinorDelta:Z

.field private mode:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

.field private onDownListener:Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;

.field private opacity:I

.field private paintStrokeColor:I

.field private touchEnabled:Z

.field private widthMultiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/drawing/DrawingView;->MINOR_MOVE:I

    .line 15
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/drawing/DrawingView;->TOUCH_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x6e

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    .line 24
    new-instance v0, Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    .line 27
    new-instance v0, Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/drawing/DrawingState;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    .line 29
    iput v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->baseColor:I

    .line 30
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingView$Mode;->DRAW:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->mode:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    .line 32
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->paintStrokeColor:I

    .line 33
    const/16 v0, 0xff

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->opacity:I

    .line 34
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->widthMultiplier:F

    .line 36
    iput-boolean v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->touchEnabled:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->fixTouchPosition:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x6e

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    .line 24
    new-instance v0, Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    .line 27
    new-instance v0, Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/drawing/DrawingState;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    .line 29
    iput v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->baseColor:I

    .line 30
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingView$Mode;->DRAW:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->mode:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    .line 32
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->paintStrokeColor:I

    .line 33
    const/16 v0, 0xff

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->opacity:I

    .line 34
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->widthMultiplier:F

    .line 36
    iput-boolean v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->touchEnabled:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->fixTouchPosition:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0x6e

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    .line 24
    new-instance v0, Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    .line 27
    new-instance v0, Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/drawing/DrawingState;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    .line 29
    iput v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->baseColor:I

    .line 30
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingView$Mode;->DRAW:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->mode:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    .line 32
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->paintStrokeColor:I

    .line 33
    const/16 v0, 0xff

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->opacity:I

    .line 34
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->widthMultiplier:F

    .line 36
    iput-boolean v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->touchEnabled:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->fixTouchPosition:Z

    .line 44
    return-void
.end method

.method private createPaint()Landroid/graphics/Paint;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 60
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 63
    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->mode:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    sget-object v2, Lcom/vk/attachpicker/drawing/DrawingView$Mode;->ERASER:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    if-ne v1, v2, :cond_0

    .line 65
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 66
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 73
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget v1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->paintStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget v1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->opacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private endCurrentPath()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->getLastPath()Landroid/graphics/Path;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/drawing/DrawingView;->fillPath(Landroid/graphics/Path;Z)V

    .line 88
    return-void
.end method

.method private fillPath(Landroid/graphics/Path;Z)V
    .locals 18
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "shouldEnd"    # Z

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->rewind()V

    .line 136
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v9}, Lcom/vk/attachpicker/util/DynamicFloatArray;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v2

    .line 141
    .local v2, "beginPointX":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v3

    .line 143
    .local v3, "beginPointY":F
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->isMinorDelta:Z

    if-eqz v9, :cond_2

    .line 144
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 145
    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v9, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 147
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v9}, Lcom/vk/attachpicker/util/DynamicFloatArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v9, v12}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v7

    .line 150
    .local v7, "prePointX":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v9, v12}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v8

    .line 151
    .local v8, "prePointY":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v9, v6}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v4

    .line 152
    .local v4, "currentPointX":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v9, v6}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v5

    .line 154
    .local v5, "currentPointY":F
    sub-float v9, v4, v7

    float-to-double v12, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-float v9, v5, v8

    float-to-double v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 156
    .local v10, "s":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpg-double v9, v10, v12

    if-gez v9, :cond_4

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    :goto_2
    if-eqz p2, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v9}, Lcom/vk/attachpicker/util/DynamicFloatArray;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_3

    .line 166
    add-float v9, v7, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    add-float v12, v8, v5

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 148
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 160
    :cond_4
    add-float v9, v7, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    add-float v12, v8, v5

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v9, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->startNewPath(Landroid/view/MotionEvent;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->isDown:Z

    .line 94
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->onDownListener:Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->onDownListener:Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;->onDown()V

    .line 97
    :cond_0
    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 100
    iget-boolean v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->isDown:Z

    if-nez v5, :cond_0

    .line 125
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/util/DynamicFloatArray;->add(F)Z

    .line 105
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/util/DynamicFloatArray;->add(F)Z

    .line 106
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v5}, Lcom/vk/attachpicker/util/DynamicFloatArray;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->endCurrentPath()V

    .line 108
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->startNewPath(Landroid/view/MotionEvent;)V

    .line 110
    :cond_1
    iget-boolean v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->isMinorDelta:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v5}, Lcom/vk/attachpicker/util/DynamicFloatArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 111
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v5, v7}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v0

    .line 112
    .local v0, "beginX":F
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v5, v7}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v1

    .line 114
    .local v1, "beginY":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v5}, Lcom/vk/attachpicker/util/DynamicFloatArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 115
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v5, v2}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v3

    .line 116
    .local v3, "x":F
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v5, v2}, Lcom/vk/attachpicker/util/DynamicFloatArray;->get(I)F

    move-result v4

    .line 117
    .local v4, "y":F
    sub-float v5, v0, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/vk/attachpicker/drawing/DrawingView;->MINOR_MOVE:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    sub-float v5, v1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/vk/attachpicker/drawing/DrawingView;->MINOR_MOVE:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 118
    :cond_2
    iput-boolean v7, p0, Lcom/vk/attachpicker/drawing/DrawingView;->isMinorDelta:Z

    .line 124
    .end local v0    # "beginX":F
    .end local v1    # "beginY":F
    .end local v2    # "i":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_3
    iget-object v5, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v5}, Lcom/vk/attachpicker/drawing/DrawingState;->getLastPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/vk/attachpicker/drawing/DrawingView;->fillPath(Landroid/graphics/Path;Z)V

    goto :goto_0

    .line 114
    .restart local v0    # "beginX":F
    .restart local v1    # "beginY":F
    .restart local v2    # "i":I
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->isDown:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->endCurrentPath()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->isDown:Z

    .line 132
    :cond_0
    return-void
.end method

.method private startNewPath(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/DynamicFloatArray;->clear()V

    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/DynamicFloatArray;->clear()V

    .line 79
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsX:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;->add(F)Z

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->currentPathPointsY:Lcom/vk/attachpicker/util/DynamicFloatArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/DynamicFloatArray;->add(F)Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->isMinorDelta:Z

    .line 83
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-direct {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->createPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/drawing/DrawingView;->widthMultiplier:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/attachpicker/drawing/DrawingState;->addElement(Landroid/graphics/Path;Landroid/graphics/Paint;F)V

    .line 84
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->clear()V

    .line 282
    invoke-virtual {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->invalidate()V

    .line 283
    return-void
.end method

.method public getBaseColor()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->baseColor:I

    return v0
.end method

.method public getDrawingStateCopy()Lcom/vk/attachpicker/drawing/DrawingState;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->copy()Lcom/vk/attachpicker/drawing/DrawingState;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->size()I

    move-result v0

    return v0
.end method

.method public getMode()Lcom/vk/attachpicker/drawing/DrawingView$Mode;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->mode:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->opacity:I

    return v0
.end method

.method public getPaintStrokeColor()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->paintStrokeColor:I

    return v0
.end method

.method public getWidthMultiplier()F
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->widthMultiplier:F

    return v0
.end method

.method public handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "before"    # Landroid/graphics/Matrix;
    .param p2, "after"    # Landroid/graphics/Matrix;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/drawing/DrawingState;->handleCropChange(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 198
    invoke-virtual {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->invalidate()V

    .line 199
    return-void
.end method

.method public handleSizeChange(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/drawing/DrawingState;->handleSizeChange(FF)V

    .line 193
    invoke-virtual {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->invalidate()V

    .line 194
    return-void
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->touchEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 220
    iget v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->baseColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 222
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/drawing/DrawingState;->draw(Landroid/graphics/Canvas;)V

    .line 223
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/drawing/DrawingView;->handleSizeChange(II)V

    .line 213
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    iget-boolean v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->touchEnabled:Z

    if-nez v2, :cond_0

    .line 228
    const/4 v2, 0x0

    .line 256
    :goto_0
    return v2

    .line 231
    :cond_0
    iget-boolean v2, p0, Lcom/vk/attachpicker/drawing/DrawingView;->fixTouchPosition:Z

    if-eqz v2, :cond_1

    .line 232
    invoke-static {p0}, Lcom/vk/attachpicker/util/Utils;->getXOnScreen(Landroid/view/View;)I

    move-result v2

    neg-int v0, v2

    .line 233
    .local v0, "deltaX":I
    invoke-static {p0}, Lcom/vk/attachpicker/util/Utils;->getYOnScreen(Landroid/view/View;)I

    move-result v2

    neg-int v1, v2

    .line 234
    .local v1, "deltaY":I
    int-to-float v2, v0

    sget v3, Lcom/vk/attachpicker/drawing/DrawingView;->TOUCH_OFFSET:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 239
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 254
    :goto_2
    invoke-virtual {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->invalidate()V

    .line 256
    const/4 v2, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v2, 0x0

    sget v3, Lcom/vk/attachpicker/drawing/DrawingView;->TOUCH_OFFSET:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 241
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 244
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 247
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public restoreState()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->restore()V

    .line 188
    invoke-virtual {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->invalidate()V

    .line 189
    return-void
.end method

.method public saveState()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->save()V

    .line 184
    return-void
.end method

.method public setBaseColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 294
    iput p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->baseColor:I

    .line 295
    return-void
.end method

.method public setFixTouchPosition(Z)V
    .locals 0
    .param p1, "fixTouchPosition"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->fixTouchPosition:Z

    .line 176
    return-void
.end method

.method public setMode(Lcom/vk/attachpicker/drawing/DrawingView$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->mode:Lcom/vk/attachpicker/drawing/DrawingView$Mode;

    .line 273
    return-void
.end method

.method public setOnDownListener(Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;)V
    .locals 0
    .param p1, "onDownListener"    # Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->onDownListener:Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;

    .line 180
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    .prologue
    const/16 v0, 0xff

    .line 310
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 311
    iput p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->opacity:I

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->opacity:I

    goto :goto_0
.end method

.method public setPaintStrokeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->paintStrokeColor:I

    .line 303
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->touchEnabled:Z

    .line 265
    return-void
.end method

.method public setWidthMultiplier(F)V
    .locals 0
    .param p1, "widthMultiplier"    # F

    .prologue
    .line 322
    iput p1, p0, Lcom/vk/attachpicker/drawing/DrawingView;->widthMultiplier:F

    .line 323
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingView;->drawingState:Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingState;->removeLastElement()V

    .line 277
    invoke-virtual {p0}, Lcom/vk/attachpicker/drawing/DrawingView;->invalidate()V

    .line 278
    return-void
.end method
