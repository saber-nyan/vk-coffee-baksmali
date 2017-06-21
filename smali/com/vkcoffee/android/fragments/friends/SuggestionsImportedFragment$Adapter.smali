.class Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "SuggestionsImportedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final TYPE_HEADER:I

.field final TYPE_ITEM:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->TYPE_ITEM:I

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->TYPE_HEADER:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)V

    return-void
.end method


# virtual methods
.method get(I)Lcom/vkcoffee/android/UserProfile;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->access$300(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->access$400(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mInvites:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->access$500(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->access$100(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mInvites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mInvites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->access$200(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .param p2, "position"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    check-cast p1, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 164
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 146
    packed-switch p2, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 148
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;-><init>(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 151
    :pswitch_1
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 152
    .local v0, "holder":Lcom/vkcoffee/android/fragments/friends/HeaderHolder;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    const v2, 0x7f080277

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->bind(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
