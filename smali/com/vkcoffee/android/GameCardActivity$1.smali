.class Lcom/vkcoffee/android/GameCardActivity$1;
.super Lcom/vkcoffee/android/api/apps/CatalogLoader;
.source "GameCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GameCardActivity;->initValues(Landroid/os/Bundle;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/GameCardActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/GameCardActivity;Ljava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/GameCardActivity;
    .param p3, "catalogInfo"    # Lcom/vkcoffee/android/data/CatalogInfo;

    .prologue
    .line 127
    .local p2, "application":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/GameCardActivity$1;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/api/apps/CatalogLoader;-><init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo;)V

    return-void
.end method


# virtual methods
.method public onLoadedNextPage(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "canLoadMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "allData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity$1;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/GameCardActivity;->access$002(Lcom/vkcoffee/android/GameCardActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity$1;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/GameCardActivity;->access$100(Lcom/vkcoffee/android/GameCardActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 132
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity$1;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity$1;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/GameCardActivity;->access$000(Lcom/vkcoffee/android/GameCardActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/GameCardActivity;->access$200(Lcom/vkcoffee/android/GameCardActivity;Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method
