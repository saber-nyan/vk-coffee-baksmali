.class public Lcom/vkcoffee/android/ui/OverlayLinearLayout;
.super Landroid/widget/LinearLayout;
.source "OverlayLinearLayout.java"


# instance fields
.field private overlay:Landroid/graphics/drawable/Drawable;

.field private padAsBg:Z

.field private padBtm:I

.field private padLeft:I

.field private padOverlay:Z

.field private padRight:I

.field private padTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padAsBg:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padAsBg:Z

    .line 27
    invoke-direct {p0, p2, v0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->init(Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padAsBg:Z

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->init(Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vkcoffee/android/R$styleable;->OverlayView:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 39
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->setOverlay(I)V

    .line 42
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padOverlay:Z

    .line 43
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padAsBg:Z

    .line 45
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "r":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->setWillNotDraw(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 92
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padOverlay:Z

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_0
    return-void

    .line 94
    :cond_1
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padAsBg:Z

    if-eqz v1, :cond_3

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 103
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padLeft:I

    iget v3, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padTop:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padBtm:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->drawableHotspotChanged(FF)V

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 87
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->postInvalidate()V

    .line 119
    :cond_0
    return-void
.end method

.method public setOverlay(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->invalidate()V

    .line 79
    return-void
.end method

.method public setOverlayPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padLeft:I

    .line 67
    iput p2, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padTop:I

    .line 68
    iput p3, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padRight:I

    .line 69
    iput p4, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padBtm:I

    .line 70
    return-void
.end method

.method public setPadOverlay(Z)V
    .locals 0
    .param p1, "pad"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->padOverlay:Z

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->invalidate()V

    .line 55
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 59
    .local v0, "parent":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->isDuplicateParentStateEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayLinearLayout;->overlay:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
