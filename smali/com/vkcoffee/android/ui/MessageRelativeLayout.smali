.class public Lcom/vkcoffee/android/ui/MessageRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MessageRelativeLayout.java"


# static fields
.field public static final STEP_DP:I

.field public static final WIDTH_DP:I


# instance fields
.field private level:I

.field private levelLast:I

.field private levelNext:I

.field private mBackgroundResource:I

.field protected originPaddingBottom:I

.field protected originPaddingLeft:I

.field protected originPaddingRight:I

.field protected originPaddingTop:I

.field protected paddingBottomD:I

.field protected paddingTopD:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->STEP_DP:I

    .line 27
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->WIDTH_DP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->mBackgroundResource:I

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingTop:I

    .line 19
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingBottom:I

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingLeft:I

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingRight:I

    .line 23
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingTopD:I

    .line 24
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingBottomD:I

    .line 29
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelLast:I

    .line 30
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->level:I

    .line 31
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelNext:I

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paint:Landroid/graphics/Paint;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->mBackgroundResource:I

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingTop:I

    .line 19
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingBottom:I

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingLeft:I

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingRight:I

    .line 23
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingTopD:I

    .line 24
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingBottomD:I

    .line 29
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelLast:I

    .line 30
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->level:I

    .line 31
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelNext:I

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paint:Landroid/graphics/Paint;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->mBackgroundResource:I

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingTop:I

    .line 19
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingBottom:I

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingLeft:I

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingRight:I

    .line 23
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingTopD:I

    .line 24
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingBottomD:I

    .line 29
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelLast:I

    .line 30
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->level:I

    .line 31
    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelNext:I

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paint:Landroid/graphics/Paint;

    .line 45
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;ZZII)V
    .locals 8
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "l"    # F
    .param p2, "t"    # F
    .param p3, "r"    # F
    .param p4, "b"    # F
    .param p5, "p"    # Landroid/graphics/Paint;
    .param p6, "top"    # Z
    .param p7, "bottom"    # Z
    .param p8, "paddingTop"    # I
    .param p9, "paddingBottom"    # I

    .prologue
    .line 91
    if-eqz p6, :cond_0

    move/from16 v0, p8

    int-to-float v1, v0

    :goto_0
    add-float/2addr p2, v1

    .line 92
    if-eqz p7, :cond_1

    move/from16 v0, p9

    int-to-float v1, v0

    :goto_1
    sub-float/2addr p4, v1

    .line 93
    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->updatePath(FFFFLandroid/graphics/Path;ZZ)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p0, v1, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 94
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static updatePath(FFFFLandroid/graphics/Path;ZZ)Landroid/graphics/Path;
    .locals 6
    .param p0, "l"    # F
    .param p1, "t"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "topCorners"    # Z
    .param p6, "bottomCorners"    # Z

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    .line 97
    sub-float v1, p2, p0

    .line 98
    .local v1, "cornerD":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v1, v4

    .line 99
    .local v2, "cornerRadius":F
    if-nez p4, :cond_0

    .line 100
    new-instance p4, Landroid/graphics/Path;

    .end local p4    # "path":Landroid/graphics/Path;
    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    .line 105
    .restart local p4    # "path":Landroid/graphics/Path;
    :goto_0
    if-eqz p5, :cond_1

    .line 106
    new-instance v3, Landroid/graphics/RectF;

    add-float v4, p1, v1

    invoke-direct {v3, p0, p1, p2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    .local v3, "top":Landroid/graphics/RectF;
    add-float v4, p1, v2

    invoke-virtual {p4, p0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    invoke-virtual {p4, v3, v5, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 113
    .end local v3    # "top":Landroid/graphics/RectF;
    :goto_1
    if-eqz p6, :cond_2

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    sub-float v4, p3, v1

    invoke-direct {v0, p0, v4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    .local v0, "bottom":Landroid/graphics/RectF;
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 120
    .end local v0    # "bottom":Landroid/graphics/RectF;
    :goto_2
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 121
    return-object p4

    .line 102
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p4, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 111
    invoke-virtual {p4, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 118
    invoke-virtual {p4, p0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 82
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    iget v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->level:I

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_2

    .line 83
    iget v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingLeft:I

    sget v1, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->STEP_DP:I

    mul-int/2addr v1, v10

    add-int/2addr v0, v1

    sget v1, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->WIDTH_DP:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingLeft:I

    sget v3, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->STEP_DP:I

    mul-int/2addr v3, v10

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelLast:I

    if-le v10, v0, :cond_0

    move v6, v11

    :goto_1
    iget v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelNext:I

    if-le v10, v0, :cond_1

    move v7, v11

    .line 85
    :goto_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->getPaddingBottom()I

    move-result v9

    move-object v0, p1

    .line 83
    invoke-static/range {v0 .. v9}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;ZZII)V

    .line 82
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move v6, v12

    .line 84
    goto :goto_1

    :cond_1
    move v7, v12

    goto :goto_2

    .line 87
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingTop:I

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingBottom:I

    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingLeft:I

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingRight:I

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paint:Landroid/graphics/Paint;

    const v1, 0x664774a8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    return-void
.end method

.method public setLevel(III)V
    .locals 5
    .param p1, "levelLast"    # I
    .param p2, "l"    # I
    .param p3, "levelNext"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelLast:I

    .line 70
    iput p2, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->level:I

    .line 71
    iput p3, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->levelNext:I

    .line 72
    iget v0, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingLeft:I

    iget v1, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->level:I

    sget v2, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->STEP_DP:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->STEP_DP:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingTop:I

    iget v2, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingTopD:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingRight:I

    iget v3, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->originPaddingBottom:I

    iget v4, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingBottomD:I

    add-int/2addr v3, v4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->requestLayout()V

    .line 77
    return-void
.end method

.method public setPaddingD(II)V
    .locals 0
    .param p1, "paddingTopD"    # I
    .param p2, "paddingBottomD"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingTopD:I

    .line 65
    iput p2, p0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->paddingBottomD:I

    .line 66
    return-void
.end method
