.class public Lcom/vkcoffee/android/ui/widget/ScrollAwareFABBehavior;
.super Landroid/support/design/widget/FloatingActionButton$Behavior;
.source "ScrollAwareFABBehavior.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton$Behavior;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;IIII)V
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    .line 26
    invoke-super/range {p0 .. p7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 28
    if-lez p5, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    if-gez p5, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 10
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vkcoffee/android/ui/widget/ScrollAwareFABBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;IIII)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 19
    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

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

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 10
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/widget/ScrollAwareFABBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
