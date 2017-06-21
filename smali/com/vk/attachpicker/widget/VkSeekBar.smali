.class public Lcom/vk/attachpicker/widget/VkSeekBar;
.super Landroid/view/View;
.source "VkSeekBar.java"

# interfaces
.implements Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;,
        Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field public static final MAX_WIDTH:I


# instance fields
.field private final DP5:I

.field private blueColor:I

.field private currentValue:F

.field private limitWidth:Z

.field private final lineHeight:I

.field private final linePaint:Landroid/graphics/Paint;

.field private listener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;

.field private final moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

.field private moveTotalDeltaX:F

.field private final overlayMode:Z

.field private final selectedPaint:Landroid/graphics/Paint;

.field private final startPointHeight:I

.field private final startValue:F

.field private stateListener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final thumbSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x190

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/VkSeekBar;->MAX_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/widget/VkSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vk/attachpicker/widget/VkSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->DP5:I

    .line 25
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->linePaint:Landroid/graphics/Paint;

    .line 26
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->selectedPaint:Landroid/graphics/Paint;

    .line 31
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbSize:I

    .line 32
    invoke-static {v8}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->lineHeight:I

    .line 33
    invoke-static {v8}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startPointHeight:I

    .line 36
    iput v7, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    .line 40
    iput v7, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->moveTotalDeltaX:F

    .line 42
    iput-boolean v6, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->limitWidth:Z

    .line 54
    sget-object v4, Lcom/vkcoffee/android/R$styleable;->VkSeekBar:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 56
    .local v3, "startValue":F
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 57
    .local v2, "overlayMode":Z
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 58
    .local v1, "drawableResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    iput v3, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startValue:F

    .line 61
    iput-boolean v2, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->overlayMode:Z

    .line 62
    new-instance v4, Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    invoke-direct {v4, p0}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;-><init>(Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;)V

    iput-object v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    .line 65
    if-eqz v2, :cond_0

    .line 66
    iget-object v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    :goto_0
    const v4, 0x7f0f0070

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->blueColor:I

    .line 71
    iget-object v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->selectedPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->blueColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    return-void

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 224
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method private attemptClaimDragFromViewPager()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 232
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-nez v0, :cond_0

    .line 236
    :goto_1
    return-void

    .line 234
    :cond_0
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 235
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private clamp(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 255
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getSlideArea()I
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private pixelsToProgress(I)F
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 243
    int-to-float v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private progressToPixels(F)I
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private publishProgress(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->listener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->listener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;

    iget v1, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    invoke-interface {v0, p0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;->onOnSeekBarValueChange(Lcom/vk/attachpicker/widget/VkSeekBar;F)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v10, 0x3fa66666    # 1.3f

    .line 162
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->selectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->blueColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->lineHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v3, v0

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->lineHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 171
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startValue:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startPointHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->selectedPaint:Landroid/graphics/Paint;

    .line 180
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    iget v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    iget v2, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    mul-float/2addr v2, v4

    add-float v1, v0, v2

    .line 190
    .local v1, "left":F
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startValue:F

    mul-float/2addr v2, v4

    add-float v3, v0, v2

    .line 198
    .local v3, "right":F
    :goto_1
    cmpl-float v0, v1, v3

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->lineHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->lineHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->selectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 199
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    float-to-int v6, v0

    .line 211
    .local v6, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 212
    .local v7, "centerY":I
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v2, v6

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbSize:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    sub-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v4, v7

    iget v5, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbSize:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v6

    iget v8, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbSize:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v8, v7

    iget v9, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbSize:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0, v2, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 220
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    :goto_2
    return-void

    .line 167
    .end local v1    # "left":F
    .end local v3    # "right":F
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->selectedPaint:Landroid/graphics/Paint;

    const v2, -0x8e8e8c

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 191
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    iget v2, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startValue:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->startValue:F

    mul-float/2addr v2, v4

    add-float v1, v0, v2

    .line 193
    .restart local v1    # "left":F
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    mul-float/2addr v2, v4

    add-float v3, v0, v2

    .restart local v3    # "right":F
    goto/16 :goto_1

    .line 195
    .end local v1    # "left":F
    .end local v3    # "right":F
    :cond_3
    const/4 v1, 0x0

    .line 196
    .restart local v1    # "left":F
    const/4 v3, 0x0

    .restart local v3    # "right":F
    goto/16 :goto_1

    .line 215
    :cond_4
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getSlideArea()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->selectedPaint:Landroid/graphics/Paint;

    .line 215
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->limitWidth:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v1, Lcom/vk/attachpicker/widget/VkSeekBar;->MAX_WIDTH:I

    if-le v0, v1, :cond_0

    .line 105
    sget v0, Lcom/vk/attachpicker/widget/VkSeekBar;->MAX_WIDTH:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 108
    return-void
.end method

.method public onMove(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 112
    iget v3, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->moveTotalDeltaX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->moveTotalDeltaX:F

    .line 113
    iget v3, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->moveTotalDeltaX:F

    iget v4, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->DP5:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->attemptClaimDrag()V

    .line 116
    :cond_0
    iget v3, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    invoke-direct {p0, v3}, Lcom/vk/attachpicker/widget/VkSeekBar;->progressToPixels(F)I

    move-result v0

    .line 117
    .local v0, "currentPixels":I
    int-to-float v3, v0

    add-float/2addr v3, p1

    float-to-int v1, v3

    .line 118
    .local v1, "newPixels":I
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar;->pixelsToProgress(I)F

    move-result v2

    .line 119
    .local v2, "newProgress":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 120
    iput v2, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    .line 121
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->invalidate()V

    .line 122
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/vk/attachpicker/widget/VkSeekBar;->publishProgress(Z)V

    .line 124
    :cond_1
    return-void
.end method

.method public onMoveBegin()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->moveTotalDeltaX:F

    .line 128
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->stateListener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->stateListener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;->onMoveBegin()V

    .line 131
    :cond_0
    return-void
.end method

.method public onMoveEnd()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/widget/VkSeekBar;->publishProgress(Z)V

    .line 135
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->stateListener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->stateListener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;

    iget v1, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;->onMoveEnd(F)V

    .line 138
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->invalidate()V

    .line 144
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->attemptClaimDragFromViewPager()V

    .line 157
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->onMoveBegin()V

    goto :goto_1

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->onMoveEnd()V

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLimitWidth(Z)V
    .locals 0
    .param p1, "limitWidth"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->limitWidth:Z

    .line 100
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->listener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;

    .line 76
    return-void
.end method

.method public setStateListener(Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->stateListener:Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;

    .line 80
    return-void
.end method

.method public setThumbDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vk/attachpicker/widget/VkSeekBar;->setValue(FZ)V

    .line 84
    return-void
.end method

.method public setValue(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "publishProgress"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/VkSeekBar;->clamp(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/VkSeekBar;->currentValue:F

    .line 88
    if-eqz p2, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/widget/VkSeekBar;->publishProgress(Z)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkSeekBar;->invalidate()V

    .line 92
    return-void
.end method
