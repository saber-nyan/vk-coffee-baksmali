.class public Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector;
.super Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;
.source "FroyoGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field protected final mDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector$1;-><init>(Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector;)V

    .line 54
    .local v0, "mScaleListener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 55
    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    invoke-super {p0, p1}, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x1

    goto :goto_0
.end method
