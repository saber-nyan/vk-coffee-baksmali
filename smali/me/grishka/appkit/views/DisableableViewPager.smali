.class public Lme/grishka/appkit/views/DisableableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "DisableableViewPager.java"


# instance fields
.field private swipeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/views/DisableableViewPager;->swipeEnabled:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/views/DisableableViewPager;->swipeEnabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lme/grishka/appkit/views/DisableableViewPager;->swipeEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    iget-boolean v0, p0, Lme/grishka/appkit/views/DisableableViewPager;->swipeEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    iget-boolean v0, p0, Lme/grishka/appkit/views/DisableableViewPager;->swipeEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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
    .line 37
    iput-boolean p1, p0, Lme/grishka/appkit/views/DisableableViewPager;->swipeEnabled:Z

    .line 38
    return-void
.end method
