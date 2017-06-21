.class public Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;
.super Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;
.source "EclairGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    .line 33
    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    :try_start_0
    iget v1, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 40
    :goto_0
    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    :try_start_0
    iget v1, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 56
    .local v0, "action":I
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    :pswitch_0
    iget v7, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    if-eq v7, v8, :cond_1

    iget v6, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    .line 82
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    iput v6, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerIndex:I

    .line 85
    :try_start_0
    invoke-super {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 88
    :goto_1
    return v5

    .line 58
    :pswitch_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    goto :goto_0

    .line 62
    :pswitch_2
    iput v8, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-static {v7}, Lcom/vk/attachpicker/photoview/Compat;->getPointerIndex(I)I

    move-result v4

    .line 69
    .local v4, "pointerIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 70
    .local v3, "pointerId":I
    iget v7, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    if-ne v3, v7, :cond_0

    .line 73
    if-nez v4, :cond_2

    move v2, v5

    .line 74
    .local v2, "newPointerIndex":I
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mActivePointerId:I

    .line 75
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mLastTouchX:F

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->mLastTouchY:F

    goto :goto_0

    .end local v2    # "newPointerIndex":I
    :cond_2
    move v2, v6

    .line 73
    goto :goto_2

    .line 86
    .end local v3    # "pointerId":I
    .end local v4    # "pointerIndex":I
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
