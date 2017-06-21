.class public Lcom/vkcoffee/android/ui/OverlaySpinner;
.super Landroid/widget/Spinner;
.source "OverlaySpinner.java"


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

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padAsBg:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padAsBg:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padAsBg:Z

    .line 32
    invoke-direct {p0, p2, v0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->init(Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padAsBg:Z

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/OverlaySpinner;->init(Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padAsBg:Z

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/OverlaySpinner;->init(Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 47
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vkcoffee/android/R$styleable;->OverlayView:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 50
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/OverlaySpinner;->setOverlay(I)V

    .line 53
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    .line 54
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padAsBg:Z

    .line 56
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "r":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/OverlaySpinner;->setWillNotDraw(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/Spinner;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 95
    .local v0, "m":Landroid/graphics/Matrix;
    const/16 v3, 0x9

    new-array v1, v3, [F

    .line 96
    .local v1, "mx":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 97
    const/4 v3, 0x2

    aget v3, v1, v3

    neg-float v3, v3

    const/4 v4, 0x5

    aget v4, v1, v4

    neg-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 99
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padAsBg:Z

    if-eqz v3, :cond_3

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 110
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padLeft:I

    iget v5, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padTop:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padBtm:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->postInvalidate()V

    .line 126
    :cond_0
    return-void
.end method

.method public setOverlay(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 89
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->invalidate()V

    .line 90
    return-void
.end method

.method public setOverlayPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padLeft:I

    .line 78
    iput p2, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padTop:I

    .line 79
    iput p3, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padRight:I

    .line 80
    iput p4, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padBtm:I

    .line 81
    return-void
.end method

.method public setPadOverlay(Z)V
    .locals 0
    .param p1, "pad"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->padOverlay:Z

    .line 65
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->invalidate()V

    .line 66
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 70
    .local v0, "parent":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlaySpinner;->isDuplicateParentStateEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPressed(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/Spinner;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlaySpinner;->overlay:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
