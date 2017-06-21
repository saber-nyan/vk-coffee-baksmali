.class public Lcom/vk/attachpicker/widget/MapViewContainer;
.super Landroid/widget/FrameLayout;
.source "MapViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;
    }
.end annotation


# instance fields
.field private downTopY:F

.field private moveStartEventSent:Z

.field private onMoveStart:Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private findParentCoordinatorLayout(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 p1, 0x0

    .line 81
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-object p1

    .line 78
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 79
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout;

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/widget/MapViewContainer;->findParentCoordinatorLayout(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p0}, Lcom/vk/attachpicker/widget/MapViewContainer;->findParentCoordinatorLayout(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v1

    .line 35
    .local v1, "parent":Landroid/support/design/widget/CoordinatorLayout;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->onMoveStart:Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;

    if-eqz v2, :cond_2

    .line 53
    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->moveStartEventSent:Z

    if-nez v2, :cond_1

    .line 54
    iput-boolean v4, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->moveStartEventSent:Z

    .line 55
    iget-object v2, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->onMoveStart:Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;

    invoke-interface {v2}, Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;->onMoveStart()V

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/vk/attachpicker/util/Utils;->getYOnScreen(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->downTopY:F

    sub-float v0, v2, v3

    .line 58
    .local v0, "deltaY":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 63
    .end local v0    # "deltaY":F
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 37
    :pswitch_1
    iput-boolean v3, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->moveStartEventSent:Z

    .line 38
    invoke-static {p0}, Lcom/vk/attachpicker/util/Utils;->getYOnScreen(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->downTopY:F

    .line 39
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1, v4}, Landroid/support/design/widget/CoordinatorLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 46
    :pswitch_2
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getOnMoveStart()Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->onMoveStart:Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;

    return-object v0
.end method

.method public setOnMoveStart(Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;)V
    .locals 0
    .param p1, "onMoveStart"    # Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vk/attachpicker/widget/MapViewContainer;->onMoveStart:Lcom/vk/attachpicker/widget/MapViewContainer$OnMoveStartListener;

    .line 72
    return-void
.end method
