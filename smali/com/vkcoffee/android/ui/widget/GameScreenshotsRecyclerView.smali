.class public Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;
.super Lme/grishka/appkit/views/UsableRecyclerView;
.source "GameScreenshotsRecyclerView.java"


# instance fields
.field protected disallowed:Z

.field protected lastX:F

.field protected lastY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->disallowed:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->disallowed:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->disallowed:Z

    .line 27
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 43
    .local v2, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 45
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    .line 47
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->requestDisallowInterceptTouchEventPared(Z)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 51
    .local v0, "dx":F
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 52
    .local v1, "dy":F
    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    .line 53
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->requestDisallowInterceptTouchEventPared(Z)V

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    goto :goto_0

    .line 60
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :pswitch_2
    if-nez v2, :cond_0

    .line 61
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->requestDisallowInterceptTouchEventPared(Z)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 92
    :goto_0
    invoke-super {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 72
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    .line 74
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->requestDisallowInterceptTouchEventPared(Z)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 78
    .local v0, "dx":F
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 79
    .local v1, "dy":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 80
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->requestDisallowInterceptTouchEventPared(Z)V

    .line 84
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastY:F

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->lastX:F

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->requestDisallowInterceptTouchEventPared(Z)V

    goto :goto_1

    .line 89
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->requestDisallowInterceptTouchEventPared(Z)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected requestDisallowInterceptTouchEventPared(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 30
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->disallowed:Z

    if-eq v1, p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 32
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/widget/GameScreenshotsRecyclerView;->disallowed:Z

    .line 38
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    return-void
.end method
