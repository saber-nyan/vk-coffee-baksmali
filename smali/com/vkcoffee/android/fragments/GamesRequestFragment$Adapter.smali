.class Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "GamesRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GamesRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 167
    const/4 v0, 0x2

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->access$600(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GameRequest;

    invoke-static {p2, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getImageUrl(ILcom/vkcoffee/android/data/GameRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->access$500(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;
    .param p2, "position"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->access$400(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->bind(Lcom/vkcoffee/android/data/GameRequest;)V

    .line 158
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "visitSource"

    const-string/jumbo v4, "direct"

    invoke-static {v2, v3, v4}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    invoke-direct {v3}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;)V

    return-object v0
.end method
