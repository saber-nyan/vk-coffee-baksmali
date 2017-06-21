.class Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GameBannersHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsAdapter"
.end annotation


# instance fields
.field private apiApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field private final listHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;Lcom/vkcoffee/android/ui/holder/RecyclerHolder;)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listHolder"    # Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->apiApplications:Ljava/util/ArrayList;

    .line 53
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->listHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    .line 54
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1000d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 75
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 76
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->listHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    iget-object v4, v0, Lcom/vkcoffee/android/data/ApiApplication;->bannerBig:Ljava/lang/String;

    const v5, 0x7f0202da

    invoke-virtual {v3, v1, v4, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 77
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-static {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;Lcom/vkcoffee/android/data/ApiApplication;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 68
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$instantiateItem$375(Lcom/vkcoffee/android/data/ApiApplication;Landroid/view/View;)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->access$000(Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "banner"

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->apiApplications:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public setApiApplications(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 57
    .local p1, "apiApplications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->apiApplications:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder$AppsAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method
