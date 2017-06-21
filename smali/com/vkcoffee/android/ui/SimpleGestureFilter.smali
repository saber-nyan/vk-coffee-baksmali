.class public Lcom/vkcoffee/android/ui/SimpleGestureFilter;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimpleGestureFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_FAKE:I = -0xd

.field public static final MODE_DYNAMIC:I = 0x2

.field public static final MODE_SOLID:I = 0x1

.field public static final MODE_TRANSPARENT:I = 0x0

.field public static final SWIPE_DOWN:I = 0x2

.field public static final SWIPE_LEFT:I = 0x3

.field public static final SWIPE_RIGHT:I = 0x4

.field public static final SWIPE_UP:I = 0x1


# instance fields
.field private context:Landroid/app/Activity;

.field private detector:Landroid/view/GestureDetector;

.field private doubleTap:Z

.field private listener:Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

.field private mode:I

.field private running:Z

.field private swipe_Full_Screen:Z

.field private swipe_Max_X_Distance:I

.field private swipe_Max_Y_Distance:I

.field private swipe_Min_Velocity:I

.field private swipe_Min_X_Distance:I

.field private swipe_Min_Y_Distance:I

.field private tapIndicator:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "sgl"    # Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 20
    iput v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_X_Distance:I

    .line 21
    iput v2, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Y_Distance:I

    .line 22
    const/16 v0, 0x15e

    iput v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_X_Distance:I

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_Y_Distance:I

    .line 24
    iput v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Velocity:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->mode:I

    .line 27
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->running:Z

    .line 28
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->tapIndicator:Z

    .line 29
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Full_Screen:Z

    .line 30
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->doubleTap:Z

    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->context:Landroid/app/Activity;

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->detector:Landroid/view/GestureDetector;

    .line 40
    iput-object p2, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->listener:Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

    .line 41
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->mode:I

    return v0
.end method

.method public getSwipeMinVelocity()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Velocity:I

    return v0
.end method

.method public getSwipeXMaxDistance()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_X_Distance:I

    return v0
.end method

.method public getSwipeXMinDistance()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_X_Distance:I

    return v0
.end method

.method public getSwipeYMaxDistance()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_Y_Distance:I

    return v0
.end method

.method public getSwipeYMinDistance()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Y_Distance:I

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->listener:Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;->onDoubleTap()V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 127
    .local v1, "xDistance":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 129
    .local v2, "yDistance":F
    iget v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_X_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_Y_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 153
    :cond_1
    :goto_0
    return v0

    .line 132
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 133
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "result":Z
    iget v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Velocity:I

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_4

    iget v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_X_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 138
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->listener:Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    .line 142
    :goto_1
    const/4 v0, 0x1

    .line 143
    goto :goto_0

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->listener:Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    goto :goto_1

    .line 144
    :cond_4
    iget v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Velocity:I

    int-to-float v3, v3

    cmpl-float v3, p4, v3

    if-lez v3, :cond_1

    iget v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Y_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 146
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->listener:Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    .line 150
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_5
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->listener:Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    goto :goto_2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    iget v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 177
    const/16 v0, -0xd

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->context:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->tapIndicator:Z

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->running:Z

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 50
    .local v0, "result":Z
    iget v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->mode:I

    if-ne v1, v4, :cond_2

    .line 51
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 52
    :cond_2
    iget v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, -0xd

    if-ne v1, v2, :cond_3

    .line 55
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 56
    :cond_3
    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 58
    :cond_4
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->tapIndicator:Z

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 60
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->tapIndicator:Z

    goto :goto_0
.end method

.method public setDoubleTap(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->doubleTap:Z

    .line 102
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->running:Z

    .line 77
    return-void
.end method

.method public setFullScreenSwipe(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Full_Screen:Z

    .line 99
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "m"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->mode:I

    .line 69
    return-void
.end method

.method public setSwipeMinVelocity(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Velocity:I

    .line 95
    return-void
.end method

.method public setSwipeXMaxDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_X_Distance:I

    .line 81
    return-void
.end method

.method public setSwipeXMinDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_X_Distance:I

    .line 88
    return-void
.end method

.method public setSwipeYMaxDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Max_Y_Distance:I

    .line 84
    return-void
.end method

.method public setSwipeYMinDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->swipe_Min_Y_Distance:I

    .line 91
    return-void
.end method
