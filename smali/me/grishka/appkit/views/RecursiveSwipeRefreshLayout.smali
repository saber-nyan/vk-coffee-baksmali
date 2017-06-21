.class public Lme/grishka/appkit/views/RecursiveSwipeRefreshLayout;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "RecursiveSwipeRefreshLayout.java"

# interfaces
.implements Lme/grishka/appkit/views/SwipeRefreshLayoutI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private findScrollableChild(Landroid/view/ViewGroup;)Z
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/widget/ScrollView;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    .line 39
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v2

    .line 35
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 36
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lme/grishka/appkit/views/RecursiveSwipeRefreshLayout;->findScrollableChild(Landroid/view/ViewGroup;)Z

    move-result v2

    goto :goto_1

    .line 31
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p0}, Lme/grishka/appkit/views/RecursiveSwipeRefreshLayout;->findScrollableChild(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public setReversed(Z)V
    .locals 0
    .param p1, "mIsReversed"    # Z

    .prologue
    .line 45
    return-void
.end method
