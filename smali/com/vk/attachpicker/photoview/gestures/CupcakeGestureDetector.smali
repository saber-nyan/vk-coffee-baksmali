.class public Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Lcom/vk/attachpicker/photoview/gestures/GestureDetector;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CupcakeGestureDetector"


# instance fields
.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field protected mListener:Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 42
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    .line 44
    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return v7

    .line 71
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 72
    iget-object v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 73
    iget-object v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 78
    :goto_1
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 79
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 80
    iput-boolean v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lcom/vk/attachpicker/photoview/log/LogManager;->getLogger()Lcom/vk/attachpicker/photoview/log/Logger;

    move-result-object v8

    const-string/jumbo v9, "CupcakeGestureDetector"

    const-string/jumbo v10, "Velocity tracker is null"

    invoke-interface {v8, v9, v10}, Lcom/vk/attachpicker/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v4

    .line 86
    .local v4, "x":F
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v5

    .line 87
    .local v5, "y":F
    iget v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    sub-float v0, v4, v8

    .local v0, "dx":F
    iget v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    sub-float v1, v5, v8

    .line 89
    .local v1, "dy":F
    iget-boolean v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-nez v8, :cond_3

    .line 92
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v10, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    move v6, v7

    :cond_2
    iput-boolean v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    .line 95
    :cond_3
    iget-boolean v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v6, :cond_0

    .line 96
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;

    invoke-interface {v6, v0, v1}, Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;->onDrag(FF)V

    .line 97
    iput v4, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 98
    iput v5, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 100
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 101
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 109
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 111
    iput-object v12, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 117
    :pswitch_3
    iget-boolean v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v6, :cond_4

    .line 118
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_4

    .line 119
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 120
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 123
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 124
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 126
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .local v2, "vX":F
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 127
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 131
    .local v3, "vY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4

    .line 132
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;

    iget v8, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    iget v9, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    neg-float v10, v2

    neg-float v11, v3

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;->onFling(FFFF)V

    .line 139
    .end local v2    # "vX":F
    .end local v3    # "vY":F
    :cond_4
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 140
    iget-object v6, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 141
    iput-object v12, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnGestureListener(Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;

    .line 37
    return-void
.end method
