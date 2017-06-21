.class public Lcom/vk/attachpicker/widget/FiltersViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "FiltersViewPager.java"


# static fields
.field private static touchSlopField:Ljava/lang/reflect/Field;


# instance fields
.field private fakeSwipeAnimator:Landroid/animation/ValueAnimator;

.field private swipeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->swipeEnabled:Z

    .line 30
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->swipeEnabled:Z

    .line 35
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/vk/attachpicker/widget/FiltersViewPager;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/FiltersViewPager;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    sget-object v1, Lcom/vk/attachpicker/widget/FiltersViewPager;->touchSlopField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 41
    const-class v1, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v2, "mTouchSlop"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/vk/attachpicker/widget/FiltersViewPager;->touchSlopField:Ljava/lang/reflect/Field;

    .line 42
    sget-object v1, Lcom/vk/attachpicker/widget/FiltersViewPager;->touchSlopField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    :cond_0
    sget-object v1, Lcom/vk/attachpicker/widget/FiltersViewPager;->touchSlopField:Ljava/lang/reflect/Field;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mTouchSlop field not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public cancelFakeSwipe()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->endFakeDrag()V

    .line 98
    :cond_1
    return-void
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->swipeEnabled:Z

    return v0
.end method

.method synthetic lambda$showFakeSwipe$135()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->beginFakeDrag()Z

    .line 54
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v0, v1, v2

    .line 56
    .local v0, "targetSwipe":F
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    .line 58
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/vk/attachpicker/widget/FiltersViewPager$1;

    invoke-direct {v2, p0, v0}, Lcom/vk/attachpicker/widget/FiltersViewPager$1;-><init>(Lcom/vk/attachpicker/widget/FiltersViewPager;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/vk/attachpicker/widget/FiltersViewPager$2;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/widget/FiltersViewPager$2;-><init>(Lcom/vk/attachpicker/widget/FiltersViewPager;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator2:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->fakeSwipeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->cancelFakeSwipe()V

    .line 104
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->swipeEnabled:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->cancelFakeSwipe()V

    .line 115
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->swipeEnabled:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager;->swipeEnabled:Z

    .line 128
    return-void
.end method

.method public showFakeSwipe()V
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/vk/attachpicker/widget/FiltersViewPager$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/widget/FiltersViewPager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vk/attachpicker/util/Utils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
