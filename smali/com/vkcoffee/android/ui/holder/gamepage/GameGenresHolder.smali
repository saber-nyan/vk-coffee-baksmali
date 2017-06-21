.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameGenresHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;,
        Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private viewPager:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

.field private final visitSource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    const v0, 0x7f030029

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 75
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->visitSource:Ljava/lang/String;

    .line 77
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->viewPager:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .line 78
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
            "Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "data":Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;, "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex<Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "baseAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;

    .line 84
    .local v1, "genre":Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->visitSource:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->getAppsAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v1    # "genre":Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->viewPager:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    const v3, 0x7f0a0090

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->setData(Ljava/util/List;ILandroid/graphics/drawable/Drawable;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$IScrollToPageView;)V

    .line 88
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->bind(Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V

    return-void
.end method

.method synthetic lambda$bind$372(Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget v1, p1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
