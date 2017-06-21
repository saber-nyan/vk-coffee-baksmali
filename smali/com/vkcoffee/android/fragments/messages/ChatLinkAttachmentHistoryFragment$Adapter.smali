.class Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "ChatLinkAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->access$500(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Link;

    iget-object v0, v0, Lcom/vkcoffee/android/Link;->image_src:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->access$400(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;
    .param p2, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->access$300(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Link;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->bind(Lcom/vkcoffee/android/Link;)V

    .line 105
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
