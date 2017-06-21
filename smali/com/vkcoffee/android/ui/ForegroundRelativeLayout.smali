.class public Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ForegroundRelativeLayout.java"


# instance fields
.field private mForegroundSelector:Landroid/graphics/drawable/Drawable;

.field private mUseBackgroundPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mUseBackgroundPadding:Z

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
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
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mUseBackgroundPadding:Z

    .line 37
    invoke-direct {p0, p1, p2, p4}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 41
    if-eqz p2, :cond_1

    .line 42
    sget-object v2, Lcom/vkcoffee/android/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 45
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mUseBackgroundPadding:Z

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
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
    .line 77
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
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
    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->drawableHotspotChanged(FF)V

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 103
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 61
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/RelativeLayout;->jumpDrawablesToCurrentState()V

    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 67
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mUseBackgroundPadding:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    .line 114
    if-eqz p1, :cond_3

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->setWillNotDraw(Z)V

    .line 116
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->requestLayout()V

    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->invalidate()V

    .line 126
    :cond_2
    return-void

    .line 121
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ForegroundRelativeLayout;->mForegroundSelector:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
