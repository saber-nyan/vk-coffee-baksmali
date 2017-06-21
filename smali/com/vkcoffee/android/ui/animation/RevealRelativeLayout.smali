.class public Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RevealRelativeLayout.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/animation/RevealAnimator;


# instance fields
.field private final IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance v0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    .line 25
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
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    new-instance v0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    .line 30
    return-void
.end method


# virtual methods
.method public attachRevealInfo(Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->attachRevealInfo(Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;)V

    .line 73
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 78
    iget-object v2, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)I

    move-result v1

    .local v1, "state":I
    if-eqz v1, :cond_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 80
    .local v0, "isInvalided":Z
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 83
    .end local v0    # "isInvalided":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getRevealRadius()F
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->getRevealRadius()F

    move-result v0

    return v0
.end method

.method public onRevealAnimationCancel()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->onRevealAnimationCancel()V

    .line 45
    return-void
.end method

.method public onRevealAnimationEnd()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->onRevealAnimationEnd()V

    .line 40
    return-void
.end method

.method public onRevealAnimationStart()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->onRevealAnimationStart()V

    .line 35
    return-void
.end method

.method public setRevealRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealRelativeLayout;->IMPL:Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->setRevealRadius(F)V

    .line 55
    return-void
.end method
