.class Lcom/vkcoffee/android/gifs/GifRootLayout$1;
.super Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;
.source "GifRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/gifs/GifRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCaptured:Z

.field final synthetic this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/gifs/GifRootLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/gifs/GifRootLayout;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 91
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 92
    .local v1, "topBound":I
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getHeight()I

    move-result v0

    .line 93
    .local v0, "bottomBound":I
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 43
    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 44
    .local v0, "offset":F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 46
    .local v1, "percent":F
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setBackgroundAlpha(I)V

    .line 48
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->mCaptured:Z

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v2, v2, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v2, v2, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    invoke-interface {v2}, Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;->finishWithoutAnimation()V

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->invalidate()V

    .line 54
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 59
    .local v0, "offset":F
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->mCaptured:Z

    .line 60
    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    cmpl-float v1, p3, v3

    if-nez v1, :cond_2

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v1, v1, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v1, v1, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    invoke-interface {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;->hasPreviewLocationData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout;->performBack()V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout;->invalidate()V

    .line 77
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v1, v1, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_0

    .line 66
    :cond_2
    cmpg-float v1, p3, v3

    if-ltz v1, :cond_3

    cmpl-float v1, p3, v3

    if-nez v1, :cond_5

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v1, v1, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v1, v1, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    invoke-interface {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;->hasPreviewLocationData()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout;->performBack()V

    goto :goto_0

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v1, v1, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_0

    .line 73
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v1, v1, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    invoke-virtual {v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->this$0:Lcom/vkcoffee/android/gifs/GifRootLayout;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;->mCaptured:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
