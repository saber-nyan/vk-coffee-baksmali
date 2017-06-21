.class public Lcom/vk/attachpicker/crop/CropTouchListener;
.super Ljava/lang/Object;
.source "CropTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/vk/attachpicker/crop/gestures/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final gestureCallback:Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

.field private final scaleDragDetector:Lcom/vk/attachpicker/crop/gestures/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureCallback"    # Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->enabled:Z

    .line 20
    new-instance v0, Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/crop/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->scaleDragDetector:Lcom/vk/attachpicker/crop/gestures/GestureDetector;

    .line 21
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->scaleDragDetector:Lcom/vk/attachpicker/crop/gestures/GestureDetector;

    invoke-interface {v0, p0}, Lcom/vk/attachpicker/crop/gestures/GestureDetector;->setOnGestureListener(Lcom/vk/attachpicker/crop/gestures/OnGestureListener;)V

    .line 22
    iput-object p2, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->gestureCallback:Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

    .line 23
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->enabled:Z

    return v0
.end method

.method public onDrag(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->scaleDragDetector:Lcom/vk/attachpicker/crop/gestures/GestureDetector;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/crop/CropTouchListener;->postTranslate(FF)V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 44
    return-void
.end method

.method public onScale(FFF)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/attachpicker/crop/CropTouchListener;->postScale(FFF)V

    .line 50
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-boolean v2, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->enabled:Z

    if-nez v2, :cond_0

    .line 73
    :goto_0
    return v1

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->scaleDragDetector:Lcom/vk/attachpicker/crop/gestures/GestureDetector;

    invoke-interface {v2, p2}, Lcom/vk/attachpicker/crop/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->gestureCallback:Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;->onTouchBegin()V

    goto :goto_1

    .line 66
    :pswitch_2
    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->gestureCallback:Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;->onTouchEnd()V

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public postScale(FFF)V
    .locals 1
    .param p1, "scaleDelta"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->gestureCallback:Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;->onScale(FFF)V

    .line 31
    return-void
.end method

.method public postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->gestureCallback:Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

    invoke-interface {v0, p1, p2}, Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;->onTranslate(FF)Z

    .line 27
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vk/attachpicker/crop/CropTouchListener;->enabled:Z

    .line 83
    return-void
.end method
