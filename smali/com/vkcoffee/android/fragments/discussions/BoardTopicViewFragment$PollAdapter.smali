.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "BoardTopicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PollAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field pollAttachment:Lcom/vkcoffee/android/attachments/PollAttachment;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->pollAttachment:Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 248
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->pollAttachment:Lcom/vkcoffee/android/attachments/PollAttachment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 268
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->pollAttachment:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;->bind(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    .line 261
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 256
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public setPollAttachment(Lcom/vkcoffee/android/attachments/PollAttachment;)V
    .locals 0
    .param p1, "pollAttachment"    # Lcom/vkcoffee/android/attachments/PollAttachment;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->pollAttachment:Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 252
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->notifyDataSetChanged()V

    .line 253
    return-void
.end method
