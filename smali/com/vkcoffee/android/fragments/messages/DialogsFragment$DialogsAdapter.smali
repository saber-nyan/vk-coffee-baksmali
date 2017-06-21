.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field displayItems:Ljava/util/ArrayList;

.field final userPhotoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 1226
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->displayItems:Ljava/util/ArrayList;

    .line 1227
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->userPhotoUrl:Ljava/lang/String;

    .line 1228
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1229
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "var1"    # I

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/DialogEntry;

    iget-object v1, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v1, v1, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/DialogEntry;

    iget-object v1, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v2, 0x77359400

    if-gt v1, v2, :cond_0

    .line 1234
    const/4 v0, 0x1

    .line 1239
    .local v0, "var2":B
    :goto_0
    return v0

    .line 1236
    .end local v0    # "var2":B
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "var2":B
    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .prologue
    .line 1243
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 1245
    .local v0, "var3":Lcom/vkcoffee/android/DialogEntry;
    if-nez p2, :cond_0

    .line 1246
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .local v1, "var4":Ljava/lang/String;
    :goto_0
    move-object v2, v1

    .line 1263
    .end local v1    # "var4":Ljava/lang/String;
    .local v2, "var4":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1248
    .end local v2    # "var4":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1249
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-eqz v3, :cond_1

    .line 1250
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->userPhotoUrl:Ljava/lang/String;

    .restart local v1    # "var4":Ljava/lang/String;
    move-object v2, v1

    .line 1251
    .end local v1    # "var4":Ljava/lang/String;
    .restart local v2    # "var4":Ljava/lang/String;
    goto :goto_1

    .line 1254
    .end local v2    # "var4":Ljava/lang/String;
    :cond_1
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v4, 0x77359400

    if-le v3, v4, :cond_2

    .line 1255
    iget-object v1, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .restart local v1    # "var4":Ljava/lang/String;
    move-object v2, v1

    .line 1256
    .end local v1    # "var4":Ljava/lang/String;
    .restart local v2    # "var4":Ljava/lang/String;
    goto :goto_1

    .line 1260
    .end local v2    # "var4":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "var4":Ljava/lang/String;
    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;I)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;
    .param p2, "var2"    # I

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->bind(Lcom/vkcoffee/android/DialogEntry;)V

    .line 1272
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;
    .locals 3
    .param p1, "var1"    # Landroid/view/ViewGroup;
    .param p2, "var2"    # I

    .prologue
    .line 1275
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    return-object v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 1279
    if-nez p1, :cond_0

    .line 1280
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "var1":Ljava/util/ArrayList;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .restart local p1    # "var1":Ljava/util/ArrayList;
    :goto_0
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->displayItems:Ljava/util/ArrayList;

    .line 1286
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->notifyDataSetChanged()V

    .line 1287
    return-void

    .line 1282
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local p1    # "var1":Ljava/util/ArrayList;
    .local v0, "var1":Ljava/util/ArrayList;
    move-object p1, v0

    .end local v0    # "var1":Ljava/util/ArrayList;
    .restart local p1    # "var1":Ljava/util/ArrayList;
    goto :goto_0
.end method
