.class public Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "DocumentsTabbedHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;,
        Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex",
        "<",
        "Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private viewPager:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    const v0, 0x7f030029

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 74
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;->viewPager:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .line 75
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex",
            "<",
            "Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "data":Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;, "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex<Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "baseAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;

    .line 81
    .local v1, "type":Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->getDocsAdapter(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v1    # "type":Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;->viewPager:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    const v3, 0x7f0a00bc

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->setData(Ljava/util/List;ILandroid/graphics/drawable/Drawable;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;)V

    .line 86
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;->bind(Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V

    return-void
.end method

.method synthetic lambda$bind$330(Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->index:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
