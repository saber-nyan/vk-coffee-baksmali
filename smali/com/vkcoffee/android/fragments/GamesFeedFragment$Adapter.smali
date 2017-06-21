.class Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "GamesFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GamesFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    const/4 v0, 0x2

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->access$300(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GameFeedEntry;

    invoke-static {p2, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getImageUrl(ILcom/vkcoffee/android/data/GameFeedEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 96
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->access$100(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GameFeedEntry;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->bind(Lcom/vkcoffee/android/data/GameFeedEntry;)V

    .line 97
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    invoke-direct {v0, p1, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;-><init>(Landroid/view/ViewGroup;Z)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "visitSource"

    const-string/jumbo v3, "direct"

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "activity_full"

    invoke-virtual {v0, v4, v1, v2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->setClickInfo(ZLjava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    move-result-object v0

    return-object v0
.end method
