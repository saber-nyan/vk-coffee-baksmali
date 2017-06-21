.class public Lcom/vk/attachpicker/gesture/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private fX:F

.field private fY:F

.field private mAngle:F

.field private mListener:Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;

.field private ptrID1:I

.field private ptrID2:I

.field private sX:F

.field private sY:F


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;

    .prologue
    const/4 v1, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    .line 19
    iput-object p1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mListener:Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;

    .line 20
    iput v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    .line 21
    iput v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    .line 22
    return-void
.end method

.method private angleBetweenLines(FFFFFFFF)F
    .locals 8
    .param p1, "fX"    # F
    .param p2, "fY"    # F
    .param p3, "sX"    # F
    .param p4, "sY"    # F
    .param p5, "nfX"    # F
    .param p6, "nfY"    # F
    .param p7, "nsX"    # F
    .param p8, "nsY"    # F

    .prologue
    .line 69
    sub-float v3, p2, p4

    float-to-double v4, v3

    sub-float v3, p1, p3

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 70
    .local v1, "angle1":F
    sub-float v3, p6, p8

    float-to-double v4, v3

    sub-float v3, p5, p7

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 72
    .local v2, "angle2":F
    sub-float v3, v1, v2

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v0, v3, v4

    .line 73
    .local v0, "angle":F
    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v0, v3

    .line 74
    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v0, v3

    .line 75
    :cond_1
    return v0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v1, -0x1

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 27
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    goto :goto_0

    .line 30
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    .line 31
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->sX:F

    .line 32
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->sY:F

    .line 33
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->fX:F

    .line 34
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->fY:F

    goto :goto_0

    .line 37
    :pswitch_3
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    if-eq v0, v1, :cond_0

    .line 39
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 40
    .local v7, "nsX":F
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 41
    .local v8, "nsY":F
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 42
    .local v5, "nfX":F
    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 44
    .local v6, "nfY":F
    iget v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->fX:F

    iget v2, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->fY:F

    iget v3, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->sX:F

    iget v4, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->sY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->angleBetweenLines(FFFFFFFF)F

    move-result v9

    .line 45
    .local v9, "newAngle":F
    iget-object v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mListener:Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mListener:Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;

    iget v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    sub-float v1, v9, v1

    add-float v2, v7, v5

    div-float/2addr v2, v11

    add-float v3, v8, v6

    div-float/2addr v3, v11

    invoke-interface {v0, v1, v2, v3}, Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;->onRotation(FFF)V

    .line 48
    :cond_1
    iput v9, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    goto/16 :goto_0

    .line 52
    .end local v5    # "nfX":F
    .end local v6    # "nfY":F
    .end local v7    # "nsX":F
    .end local v8    # "nsY":F
    .end local v9    # "newAngle":F
    :pswitch_4
    iput v10, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    .line 53
    iput v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    goto/16 :goto_0

    .line 56
    :pswitch_5
    iput v10, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    .line 57
    iput v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    goto/16 :goto_0

    .line 60
    :pswitch_6
    iput v10, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->mAngle:F

    .line 61
    iput v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID1:I

    .line 62
    iput v1, p0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->ptrID2:I

    goto/16 :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
