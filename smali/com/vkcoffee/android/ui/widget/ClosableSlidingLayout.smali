.class public Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;
.super Landroid/widget/FrameLayout;
.source "ClosableSlidingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$ViewDragCallback;
    }
.end annotation


# instance fields
.field private mDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    const v0, 0x3f4ccccd    # 0.8f

    new-instance v1, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$ViewDragCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$ViewDragCallback;-><init>(Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$1;)V

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 40
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
