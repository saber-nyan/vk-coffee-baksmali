.class public Lcom/vk/attachpicker/widget/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"


# instance fields
.field private angle:I

.field private angleChanged:Z

.field private final childTouchPoint:[F

.field private final rotateMatrix:Landroid/graphics/Matrix;

.field private final tempRectF1:Landroid/graphics/RectF;

.field private final tempRectF2:Landroid/graphics/RectF;

.field private final viewRectRotated:Landroid/graphics/Rect;

.field private final viewTouchPoint:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vk/attachpicker/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->tempRectF1:Landroid/graphics/RectF;

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->tempRectF2:Landroid/graphics/RectF;

    .line 159
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewTouchPoint:[F

    .line 160
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->childTouchPoint:[F

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angleChanged:Z

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/RotateLayout;->setWillNotDraw(Z)V

    .line 41
    return-void
.end method

.method private static fixAngle(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 147
    div-int/lit8 v0, p0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    iget v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angle:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RotateLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RotateLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 118
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 120
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 131
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 133
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/vk/attachpicker/widget/RotateLayout;->childTouchPoint:[F

    iget-object v3, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewTouchPoint:[F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 135
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->childTouchPoint:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/vk/attachpicker/widget/RotateLayout;->childTouchPoint:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 136
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 137
    .local v0, "result":Z
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewTouchPoint:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewTouchPoint:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 139
    return v0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angle:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RotateLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RotateLayout;->invalidate()V

    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angleChanged:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->tempRectF1:Landroid/graphics/RectF;

    .line 100
    .local v0, "layoutRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->tempRectF2:Landroid/graphics/RectF;

    .line 101
    .local v1, "layoutRectRotated":Landroid/graphics/RectF;
    sub-int v3, p4, p2

    int-to-float v3, v3

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object v3, p0, Lcom/vk/attachpicker/widget/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angle:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 103
    iget-object v3, p0, Lcom/vk/attachpicker/widget/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 104
    iget-object v3, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 105
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angleChanged:Z

    .line 108
    .end local v0    # "layoutRect":Landroid/graphics/RectF;
    .end local v1    # "layoutRectRotated":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RotateLayout;->getView()Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 110
    iget-object v3, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/vk/attachpicker/widget/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 112
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RotateLayout;->getView()Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 79
    iget v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angle:I

    rem-int/lit16 v1, v1, 0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    .line 81
    invoke-virtual {p0, v0, p2, p1}, Lcom/vk/attachpicker/widget/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p1}, Lcom/vk/attachpicker/widget/RotateLayout;->resolveSize(II)I

    move-result v1

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, p2}, Lcom/vk/attachpicker/widget/RotateLayout;->resolveSize(II)I

    move-result v2

    .line 82
    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/widget/RotateLayout;->setMeasuredDimension(II)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/vk/attachpicker/widget/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/vk/attachpicker/widget/RotateLayout;->resolveSize(II)I

    move-result v1

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/vk/attachpicker/widget/RotateLayout;->resolveSize(II)I

    move-result v2

    .line 87
    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/widget/RotateLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0
.end method

.method public setAngle(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 56
    invoke-static {p1}, Lcom/vk/attachpicker/widget/RotateLayout;->fixAngle(I)I

    move-result v0

    .line 57
    .local v0, "fixedAngle":I
    iget v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angle:I

    if-eq v1, v0, :cond_0

    .line 58
    iput v0, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angle:I

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vk/attachpicker/widget/RotateLayout;->angleChanged:Z

    .line 60
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RotateLayout;->requestLayout()V

    .line 62
    :cond_0
    return-void
.end method
