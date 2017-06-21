.class public Lcom/vk/attachpicker/gesture/MoveGestureDetector;
.super Ljava/lang/Object;
.source "MoveGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;

.field private prevPointerCount:I

.field private prevX:F

.field private prevY:F


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->mListener:Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;

    .line 14
    return-void
.end method

.method public static getFocalX(Landroid/view/MotionEvent;)F
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 41
    .local v1, "pCount":I
    const/4 v2, 0x0

    .line 42
    .local v2, "x":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    int-to-float v3, v1

    div-float v3, v2, v3

    return v3
.end method

.method public static getFocalY(Landroid/view/MotionEvent;)F
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 50
    .local v1, "pCount":I
    const/4 v2, 0x0

    .line 51
    .local v2, "y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    int-to-float v3, v1

    div-float v3, v2, v3

    return v3
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 36
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 19
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iput v3, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevPointerCount:I

    .line 20
    invoke-static {p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->getFocalX(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevX:F

    .line 21
    invoke-static {p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->getFocalY(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevY:F

    .line 24
    :pswitch_2
    invoke-static {p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->getFocalX(Landroid/view/MotionEvent;)F

    move-result v1

    .line 25
    .local v1, "newX":F
    invoke-static {p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->getFocalY(Landroid/view/MotionEvent;)F

    move-result v2

    .line 26
    .local v2, "newY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 28
    .local v0, "newPointerCount":I
    iget-object v3, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->mListener:Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevPointerCount:I

    if-ne v3, v0, :cond_0

    .line 29
    iget-object v3, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->mListener:Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;

    iget v4, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevX:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevY:F

    sub-float v5, v2, v5

    invoke-interface {v3, v4, v5}, Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;->onMove(FF)V

    .line 31
    :cond_0
    iput v1, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevX:F

    .line 32
    iput v2, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevY:F

    .line 33
    iput v0, p0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->prevPointerCount:I

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
