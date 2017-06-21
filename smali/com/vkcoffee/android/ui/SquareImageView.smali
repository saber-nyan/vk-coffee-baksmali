.class public Lcom/vkcoffee/android/ui/SquareImageView;
.super Landroid/widget/ImageView;
.source "SquareImageView.java"


# instance fields
.field private mForegroundSelector:Landroid/graphics/drawable/Drawable;

.field private mSize:I

.field private mUseBackgroundPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/SquareImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/SquareImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mUseBackgroundPadding:Z

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mSize:I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/SquareImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mUseBackgroundPadding:Z

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mSize:I

    .line 39
    invoke-direct {p0, p1, p2, p4}, Lcom/vkcoffee/android/ui/SquareImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    sget-object v2, Lcom/vkcoffee/android/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mUseBackgroundPadding:Z

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/SquareImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->drawableHotspotChanged(FF)V

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 105
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 63
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 139
    iget v1, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mSize:I

    if-lez v1, :cond_0

    .line 140
    iget v1, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mSize:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 141
    .local v0, "size":I
    invoke-super {p0, v0, v0}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 145
    .end local v0    # "size":I
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-super {p0, p1, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 69
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mUseBackgroundPadding:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/SquareImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    .line 116
    if-eqz p1, :cond_3

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/SquareImageView;->setWillNotDraw(Z)V

    .line 118
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->requestLayout()V

    .line 126
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->invalidate()V

    .line 128
    :cond_2
    return-void

    .line 123
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/SquareImageView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    iget v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mSize:I

    if-eq p1, v0, :cond_0

    .line 132
    iput p1, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mSize:I

    .line 133
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SquareImageView;->requestLayout()V

    .line 135
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SquareImageView;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
