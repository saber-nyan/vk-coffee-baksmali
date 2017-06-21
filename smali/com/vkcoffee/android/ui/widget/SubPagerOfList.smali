.class public Lcom/vkcoffee/android/ui/widget/SubPagerOfList;
.super Landroid/support/v4/view/ViewPager;
.source "SubPagerOfList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;,
        Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;,
        Lcom/vkcoffee/android/ui/widget/SubPagerOfList$Decor;,
        Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

.field private decorView:Landroid/view/View;

.field private iScrollToPageView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

.field private volatile isStarted:Z

.field private lastCurrentPage:I

.field private parentList:Landroid/support/v7/widget/RecyclerView;

.field private parentView:Landroid/view/View;

.field public final scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    .line 36
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentView:Landroid/view/View;

    .line 37
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->iScrollToPageView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->lastCurrentPage:I

    .line 41
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->adapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->isStarted:Z

    .line 224
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;-><init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    .line 36
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentView:Landroid/view/View;

    .line 37
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->iScrollToPageView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->lastCurrentPage:I

    .line 41
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->adapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->isStarted:Z

    .line 224
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$3;-><init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->init()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->onTrackStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->onTrackFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->decorView:Landroid/view/View;

    return-object v0
.end method

.method private fillParents()V
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 196
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 197
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .end local v0    # "viewParent":Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    .line 203
    :cond_0
    return-void

    .restart local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    move-object v1, v0

    .line 200
    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentView:Landroid/view/View;

    .line 195
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->fillParents()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentView:Landroid/view/View;

    return-object v0
.end method

.method private onTrackFinish()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->isStarted:Z

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->clearIsShowFirstItemMode()V

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->iScrollToPageView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedTop()I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->lastCurrentPage:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->iScrollToPageView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;->scrollToPageView()V

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->isStarted:Z

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->requestUpdate()V

    .line 106
    :cond_1
    return-void
.end method

.method private onTrackStart()V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->isStarted:Z

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->lastCurrentPage:I

    .line 91
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->lastCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->setIsShowFirstItemMode(I)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->isStarted:Z

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->requestUpdate()V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 410
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 411
    .local v0, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 412
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 413
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 403
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 404
    .local v0, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 405
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 81
    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    return v0
.end method

.method public getEmulatedHeight()I
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getParentList()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 392
    .local v0, "listView":Landroid/support/v7/widget/RecyclerView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getEmulatedTop()I
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getTop()I

    move-result v0

    return v0
.end method

.method getParentList()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->fillParents()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->setChildrenDrawingOrderEnabled(Z)V

    .line 55
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;-><init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 77
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onAttachedToWindow()V

    .line 173
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getParentList()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    .line 174
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentView:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onDetachedFromWindow()V

    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 166
    :cond_0
    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentList:Landroid/support/v7/widget/RecyclerView;

    .line 167
    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->parentView:Landroid/view/View;

    .line 168
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v8, 0x8

    .line 112
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 115
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getPaddingTop()I

    move-result v4

    .line 116
    .local v4, "paddingTop":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 117
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 120
    .local v3, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v6, v3, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v6, :cond_0

    .line 121
    iget v6, v3, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v6, v6, 0x70

    packed-switch v6, :pswitch_data_0

    .line 116
    .end local v3    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 123
    .restart local v3    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :pswitch_0
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->decorView:Landroid/view/View;

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_1

    .line 132
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedHeight()I

    move-result v6

    sub-int v1, v6, v4

    .line 134
    .local v1, "currentPageHeight":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getCurrentItem()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->getViewByPosition(I)Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    move-result-object v5

    .line 135
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 146
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_3
    if-ltz v2, :cond_6

    .line 147
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 149
    instance-of v6, v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    if-eqz v6, :cond_3

    move-object v6, v0

    .line 150
    check-cast v6, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setMeasuredDimensionPublic(II)V

    .line 146
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 138
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_4
    if-ltz v2, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getCurrentItem()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 140
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 141
    goto :goto_2

    .line 138
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 155
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getMeasuredWidth()I

    move-result v6

    add-int v7, v1, v4

    invoke-virtual {p0, v6, v7}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->setMeasuredDimension(II)V

    .line 156
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    move-result-object v0

    .line 248
    .local v0, "adapter":Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 251
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    move-result-object v0

    .line 238
    .local v0, "adapter":Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->decorView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->decorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedTop()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 244
    :cond_1
    return-void
.end method

.method public requestUpdate()V
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getParentView()Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "parentView":Landroid/view/View;
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$2;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$2;-><init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;Landroid/view/View;)V

    .line 218
    .local v0, "onPreDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 220
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 258
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 259
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;

    if-eqz v2, :cond_0

    .line 261
    check-cast v0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 258
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 264
    :cond_1
    return-void
.end method

.method public setData(Ljava/util/List;ILandroid/graphics/drawable/Drawable;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemHeightRes"    # I
    .param p3, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "iScrollToPageView"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;",
            ">;I",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;>;"
    iput-object p4, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->iScrollToPageView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

    .line 272
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->adapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 274
    .local v0, "itemHeight":I
    new-instance v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p3, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;-><init>(Ljava/util/List;ILandroid/graphics/drawable/Drawable;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->adapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 278
    .end local v0    # "itemHeight":I
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->adapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->setData(Ljava/util/List;)V

    goto :goto_0
.end method
