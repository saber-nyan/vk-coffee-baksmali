.class public Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;
.super Ljava/lang/Object;
.source "RevealAnimatorImpl.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/animation/RevealAnimator;


# instance fields
.field private mRadius:F

.field private mRevealInfo:Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;

.field private mRevealPath:Landroid/graphics/Path;

.field private mRunning:Z

.field private final mTargetBounds:Landroid/graphics/Rect;

.field private final mView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mTargetBounds:Landroid/graphics/Rect;

    .line 23
    iput-object p1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mView:Landroid/view/ViewGroup;

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRevealPath:Landroid/graphics/Path;

    .line 25
    return-void
.end method


# virtual methods
.method public attachRevealInfo(Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRevealInfo:Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;

    .line 76
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)I
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 28
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRunning:Z

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 31
    .local v0, "state":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 32
    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRevealPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRevealInfo:Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;

    iget v2, v2, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;->centerX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRevealInfo:Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;

    iget v3, v3, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;->centerY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 34
    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 37
    .end local v0    # "state":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRevealRadius()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRadius:F

    return v0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 71
    return-void
.end method

.method public onRevealAnimationCancel()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->onRevealAnimationEnd()V

    .line 54
    return-void
.end method

.method public onRevealAnimationEnd()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRunning:Z

    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->invalidate(Landroid/graphics/Rect;)V

    .line 49
    return-void
.end method

.method public onRevealAnimationStart()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRunning:Z

    .line 43
    return-void
.end method

.method public setRevealRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 58
    iput p1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mRadius:F

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimatorImpl;->invalidate(Landroid/graphics/Rect;)V

    .line 61
    return-void
.end method
