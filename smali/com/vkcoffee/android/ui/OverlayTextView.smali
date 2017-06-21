.class public Lcom/vkcoffee/android/ui/OverlayTextView;
.super Landroid/widget/TextView;
.source "OverlayTextView.java"


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

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padAsBg:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padAsBg:Z

    .line 30
    invoke-direct {p0, p2, v0}, Lcom/vkcoffee/android/ui/OverlayTextView;->init(Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padOverlay:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padAsBg:Z

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/OverlayTextView;->init(Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vkcoffee/android/R$styleable;->OverlayView:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 42
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/OverlayTextView;->setOverlay(I)V

    .line 45
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padOverlay:Z

    .line 46
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padAsBg:Z

    .line 48
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "r":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/OverlayTextView;->setWillNotDraw(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 125
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->postInvalidate()V

    .line 127
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 96
    .local v0, "m":Landroid/graphics/Matrix;
    const/16 v3, 0x9

    new-array v1, v3, [F

    .line 97
    .local v1, "mx":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 98
    const/4 v3, 0x2

    aget v3, v1, v3

    neg-float v3, v3

    const/4 v4, 0x5

    aget v4, v1, v4

    neg-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 100
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padOverlay:Z

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padAsBg:Z

    if-eqz v3, :cond_3

    .line 103
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

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

    .line 111
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padLeft:I

    iget v5, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padTop:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padBtm:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setOverlay(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/OverlayTextView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->invalidate()V

    .line 82
    return-void
.end method

.method public setOverlayPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padLeft:I

    .line 70
    iput p2, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padTop:I

    .line 71
    iput p3, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padRight:I

    .line 72
    iput p4, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padBtm:I

    .line 73
    return-void
.end method

.method public setPadOverlay(Z)V
    .locals 0
    .param p1, "pad"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->padOverlay:Z

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->invalidate()V

    .line 58
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 62
    .local v0, "parent":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayTextView;->isDuplicateParentStateEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
