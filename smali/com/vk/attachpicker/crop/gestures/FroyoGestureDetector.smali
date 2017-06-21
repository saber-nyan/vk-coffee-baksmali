.class public Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector;
.super Lcom/vk/attachpicker/crop/gestures/EclairGestureDetector;
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
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector$1;-><init>(Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector;)V

    .line 54
    .local v0, "mScaleListener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 55
    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 65
    invoke-super {p0, p1}, Lcom/vk/attachpicker/crop/gestures/EclairGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
