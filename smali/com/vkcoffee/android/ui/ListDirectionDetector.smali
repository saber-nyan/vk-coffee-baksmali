.class public Lcom/vkcoffee/android/ui/ListDirectionDetector;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ListDirectionDetector.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;
    }
.end annotation


# instance fields
.field private mLastScrollY:I

.field private mPreviousFirstVisibleItem:I

.field private mScrollDirectionListener:Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;

.field private mScrollThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "scrollThreshold"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 26
    iput p1, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollThreshold:I

    .line 27
    return-void
.end method

.method private getTopItemScrollY(Landroid/widget/AbsListView;)I
    .locals 3
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "topChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method private isSameRow(I)Z
    .locals 1
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 98
    iget v0, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mPreviousFirstVisibleItem:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScrollDirectionListener(Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;)V
    .locals 0
    .param p1, "scrollDirectionListener"    # Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollDirectionListener:Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;

    .line 35
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 55
    if-nez p4, :cond_0

    .line 79
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->isSameRow(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->getTopItemScrollY(Landroid/widget/AbsListView;)I

    move-result v1

    .line 60
    .local v1, "newScrollY":I
    iget v2, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mLastScrollY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollThreshold:I

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    .line 61
    .local v0, "isSignificantDelta":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 62
    iget v2, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mLastScrollY:I

    if-le v2, v1, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->onScrollUp()V

    .line 68
    :cond_1
    :goto_2
    iput v1, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mLastScrollY:I

    goto :goto_0

    .line 60
    .end local v0    # "isSignificantDelta":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    .restart local v0    # "isSignificantDelta":Z
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->onScrollDown()V

    goto :goto_2

    .line 70
    .end local v0    # "isSignificantDelta":Z
    .end local v1    # "newScrollY":I
    :cond_4
    iget v2, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mPreviousFirstVisibleItem:I

    if-le p2, v2, :cond_5

    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->onScrollUp()V

    .line 76
    :goto_3
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->getTopItemScrollY(Landroid/widget/AbsListView;)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mLastScrollY:I

    .line 77
    iput p2, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->onScrollDown()V

    goto :goto_3
.end method

.method public onScrollDown()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollDirectionListener:Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollDirectionListener:Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;->onScrollDown()V

    .line 41
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onScrollUp()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollDirectionListener:Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollDirectionListener:Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/ListDirectionDetector$ScrollDirectionListener;->onScrollUp()V

    .line 47
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 83
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollThreshold:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    .line 84
    .local v0, "isSignificantDelta":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 85
    if-lez p3, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->onScrollUp()V

    .line 91
    :cond_0
    :goto_1
    return-void

    .line 83
    .end local v0    # "isSignificantDelta":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    .restart local v0    # "isSignificantDelta":Z
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;->onScrollDown()V

    goto :goto_1
.end method

.method public setScrollThreshold(I)V
    .locals 0
    .param p1, "scrollThreshold"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/vkcoffee/android/ui/ListDirectionDetector;->mScrollThreshold:I

    .line 95
    return-void
.end method
