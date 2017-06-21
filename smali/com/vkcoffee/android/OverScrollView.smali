.class public Lcom/vkcoffee/android/OverScrollView;
.super Landroid/widget/ScrollView;
.source "OverScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;,
        Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;,
        Lcom/vkcoffee/android/OverScrollView$ScrollEndTimerTask;
    }
.end annotation


# static fields
.field public static final ID_BOTTOM_PADDING_VIEW:I = 0x6

.field public static final ID_TOP_PADDING_VIEW:I = 0x5

.field private static final NOCHANGE_DELAY:I = 0x12c


# instance fields
.field addingContentAtTop:Z

.field anim:Landroid/view/animation/AlphaAnimation;

.field collapsedBottomH:I

.field collapsedTopH:I

.field draggingBottom:Z

.field draggingTop:Z

.field isAligned:Z

.field public onScrollEndListener:Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;

.field private prevHeight:I

.field private prevViewH:I

.field private scrollEndTimer:Ljava/util/Timer;

.field startY:F

.field vH:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->startY:F

    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    .line 21
    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedTopH:I

    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedBottomH:I

    .line 22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f7fbe77    # 0.999f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    .line 23
    iput-object v4, p0, Lcom/vkcoffee/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 25
    iput-object v4, p0, Lcom/vkcoffee/android/OverScrollView;->onScrollEndListener:Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;

    .line 27
    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->prevHeight:I

    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->prevViewH:I

    .line 28
    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->addingContentAtTop:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->isAligned:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->startY:F

    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    .line 21
    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedTopH:I

    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedBottomH:I

    .line 22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f7fbe77    # 0.999f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    .line 23
    iput-object v4, p0, Lcom/vkcoffee/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 25
    iput-object v4, p0, Lcom/vkcoffee/android/OverScrollView;->onScrollEndListener:Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;

    .line 27
    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->prevHeight:I

    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->prevViewH:I

    .line 28
    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->addingContentAtTop:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->isAligned:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->startY:F

    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    .line 21
    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedTopH:I

    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedBottomH:I

    .line 22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f7fbe77    # 0.999f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    .line 23
    iput-object v4, p0, Lcom/vkcoffee/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 25
    iput-object v4, p0, Lcom/vkcoffee/android/OverScrollView;->onScrollEndListener:Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;

    .line 27
    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->prevHeight:I

    iput v3, p0, Lcom/vkcoffee/android/OverScrollView;->prevViewH:I

    .line 28
    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->addingContentAtTop:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->isAligned:Z

    .line 42
    return-void
.end method

.method private endDraggingBottom(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 138
    iget-boolean v1, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    .line 142
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 144
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    iget v2, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 145
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 146
    new-instance v0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;-><init>(Lcom/vkcoffee/android/OverScrollView;)V

    .line 147
    .local v0, "ri":Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;
    iput v4, v0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->viewID:I

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    .end local v0    # "ri":Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;
    :goto_1
    iput-boolean v5, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private startDraggingBottom(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    .line 133
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->startY:F

    .line 135
    return-void
.end method


# virtual methods
.method protected endDraggingTop(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 110
    iget-boolean v1, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    .line 114
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 116
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    const/16 v2, 0x12c

    iget v3, p0, Lcom/vkcoffee/android/OverScrollView;->vH:F

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 117
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 118
    new-instance v0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;-><init>(Lcom/vkcoffee/android/OverScrollView;)V

    .line 119
    .local v0, "ri":Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;
    iput v4, v0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->viewID:I

    .line 120
    iget v1, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedTopH:I

    iput v1, v0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->ch:I

    .line 121
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .end local v0    # "ri":Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;
    :goto_1
    iput-boolean v5, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedTopH:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onDragTop(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 158
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/vkcoffee/android/OverScrollView;->isAligned:Z

    if-nez v1, :cond_1

    .line 162
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/vkcoffee/android/OverScrollView;->prevHeight:I

    if-lez v1, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/OverScrollView;->prevHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/OverScrollView;->scrollBy(II)V

    .line 169
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 170
    if-nez p1, :cond_4

    iget-boolean v1, p0, Lcom/vkcoffee/android/OverScrollView;->addingContentAtTop:Z

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/OverScrollView;->prevViewH:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/OverScrollView;->scrollTo(II)V

    .line 175
    :cond_3
    iput-boolean v3, p0, Lcom/vkcoffee/android/OverScrollView;->addingContentAtTop:Z

    .line 177
    .end local v0    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/OverScrollView;->prevHeight:I

    .line 178
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .restart local v0    # "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/OverScrollView;->prevViewH:I

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 190
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkcoffee/android/OverScrollView$ScrollEndTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/OverScrollView$ScrollEndTimerTask;-><init>(Lcom/vkcoffee/android/OverScrollView;Lcom/vkcoffee/android/OverScrollView$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 192
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getScrollY()I

    move-result v2

    if-nez v2, :cond_2

    .line 52
    iget-boolean v2, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/OverScrollView;->startDraggingTop(Landroid/view/MotionEvent;)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/OverScrollView;->startY:F

    sub-float v0, v2, v3

    .line 56
    .local v0, "h":F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_1

    .line 57
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/OverScrollView;->endDraggingTop(Z)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 100
    .end local v0    # "h":F
    :goto_0
    return v1

    .line 60
    .restart local v0    # "h":F
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v0

    iget v5, p0, Lcom/vkcoffee/android/OverScrollView;->collapsedTopH:I

    add-int/2addr v4, v5

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/OverScrollView;->onDragTop(I)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "awakenScrollBars"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    goto :goto_0

    .line 68
    .end local v0    # "h":F
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/OverScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    if-lt v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    if-eqz v2, :cond_6

    .line 70
    :cond_3
    iget-boolean v2, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    if-nez v2, :cond_4

    .line 71
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/OverScrollView;->startDraggingBottom(Landroid/view/MotionEvent;)V

    .line 73
    :cond_4
    iget v2, p0, Lcom/vkcoffee/android/OverScrollView;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v0, v2, v3

    .line 74
    .restart local v0    # "h":F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_5

    .line 75
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/OverScrollView;->endDraggingBottom(Z)V

    .line 76
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 78
    :cond_5
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v0

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v2, Lcom/vkcoffee/android/OverScrollView$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/OverScrollView$1;-><init>(Lcom/vkcoffee/android/OverScrollView;)V

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/OverScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 86
    .end local v0    # "h":F
    :cond_6
    iget-boolean v2, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    if-eqz v2, :cond_a

    .line 92
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 93
    iget-boolean v2, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    if-eqz v2, :cond_8

    .line 94
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/OverScrollView;->endDraggingTop(Z)V

    .line 96
    :cond_8
    iget-boolean v2, p0, Lcom/vkcoffee/android/OverScrollView;->draggingBottom:Z

    if-eqz v2, :cond_9

    .line 97
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/OverScrollView;->endDraggingBottom(Z)V

    .line 100
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 88
    :cond_a
    iget-boolean v2, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    if-eqz v2, :cond_7

    .line 89
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/OverScrollView;->endDraggingTop(Z)V

    goto :goto_1
.end method

.method public postScrollEnd()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/vkcoffee/android/OverScrollView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/OverScrollView$2;-><init>(Lcom/vkcoffee/android/OverScrollView;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/OverScrollView;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method protected startDraggingTop(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/OverScrollView;->draggingTop:Z

    .line 105
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/OverScrollView;->startY:F

    .line 107
    return-void
.end method
