.class public Lcom/vkcoffee/android/ui/OverlayImageView;
.super Lcom/vkcoffee/android/ui/widget/RatioImageView;
.source "OverlayImageView.java"


# instance fields
.field private overlay:Landroid/graphics/drawable/Drawable;

.field private pad:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/OverlayImageView;->init(Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/vkcoffee/android/ui/OverlayImageView;->init(Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/OverlayImageView;->init(Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vkcoffee/android/R$styleable;->OverlayView:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 40
    .local v1, "r":I
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->pad:Z

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/OverlayImageView;->setOverlay(I)V

    .line 45
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "r":I
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/OverlayImageView;->setWillNotDraw(Z)V

    .line 46
    return-void
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .local v0, "pad":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 59
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/OverlayImageView;->setPadding(IIII)V

    .line 61
    .end local v0    # "pad":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->drawableStateChanged()V

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 95
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 74
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 77
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->pad:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setOverlay(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/OverlayImageView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 103
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->pad:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->updatePadding()V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->invalidate()V

    .line 107
    return-void
.end method

.method public setPadOverlay(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->pad:Z

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->updatePadding()V

    .line 53
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 65
    .local v0, "parent":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->isDuplicateParentStateEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
