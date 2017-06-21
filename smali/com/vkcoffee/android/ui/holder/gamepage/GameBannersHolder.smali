.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameBannersHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/data/ApiApplication;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;

.field private final infiniteViewPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

.field private final visitSource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    const v0, 0x7f030025

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->visitSource:Ljava/lang/String;

    .line 31
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->infiniteViewPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->infiniteViewPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setOffscreenPageLimit(I)V

    .line 33
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;Lcom/vkcoffee/android/ui/holder/RecyclerHolder;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->infiniteViewPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    new-instance v1, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->visitSource:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->bind(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bind(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->setApiApplications(Ljava/util/ArrayList;)V

    .line 40
    return-void
.end method

.method public getInfiniteViewPager()Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->infiniteViewPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    return-object v0
.end method
