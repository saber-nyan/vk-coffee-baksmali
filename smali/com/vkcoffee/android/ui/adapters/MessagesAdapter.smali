.class public Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

.field private chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private fontSize:I

.field private isTimeVisible:Z

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;"
        }
    .end annotation
.end field

.field private topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

.field private weakReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 3
    .param p1, "chatFragment"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->isTimeVisible:Z

    .line 27
    iput-object v1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .line 29
    iput-object v1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->bottomLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->weakReferences:Ljava/util/ArrayList;

    .line 132
    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->setHasStableIds(Z)V

    .line 135
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "fontSize"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->fontSize:I

    .line 136
    return-void
.end method


# virtual methods
.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->bottomLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sub-int/2addr p1, v0

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getImageCount()I

    move-result v1

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v1, 0x0

    .line 226
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 234
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    sub-int/2addr p1, v0

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 234
    goto :goto_0
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->bottomLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 195
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-eqz v0, :cond_0

    .line 196
    const-wide/16 v0, 0x0

    .line 203
    :goto_0
    return-wide v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    sub-int/2addr p1, v0

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->itemId:J

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 203
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-eqz v0, :cond_0

    .line 160
    const v0, 0x7f100041

    .line 167
    :goto_0
    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    sub-int/2addr p1, v0

    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getViewType(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)I

    move-result v0

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 167
    :cond_2
    const v0, 0x7f100036

    goto :goto_0
.end method

.method public getMessageItemByPosition(I)Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    sub-int/2addr p1, v1

    .line 95
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    goto :goto_0

    .line 93
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isTimeVisible()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->isTimeVisible:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 172
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-eqz v0, :cond_1

    .line 173
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-nez v0, :cond_2

    move v0, v5

    :goto_1
    sub-int/2addr p2, v0

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .local v1, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    move-object v0, p1

    .line 180
    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->isTimeVisible:Z

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->setTimeIsVisible(Z)V

    move-object v0, p1

    .line 181
    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget v4, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    invoke-virtual {v2, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isSelected(I)Z

    move-result v2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_3

    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 182
    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getPeerID()I

    move-result v4

    .line 181
    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;ZZIZ)V

    .line 183
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->referenceLinkToHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setHolder(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .end local v1    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_2
    move v0, v3

    .line 176
    goto :goto_1

    .restart local v1    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_3
    move v3, v5

    .line 181
    goto :goto_2

    .line 186
    .end local v1    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 188
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->bottomLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->bottomLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 148
    const v1, 0x7f100041

    if-eq p2, v1, :cond_0

    const v1, 0x7f100036

    if-ne p2, v1, :cond_1

    .line 149
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 153
    :goto_0
    return-object v0

    .line 151
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getPeerID()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget v5, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->fontSize:I

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;-><init>(Landroid/view/ViewGroup;IILcom/vkcoffee/android/fragments/messages/ChatFragment;I)V

    .line 152
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->weakReferences:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public prepareItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .restart local p1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    :goto_0
    const/4 v2, 0x0

    .line 104
    .local v2, "lastMessage":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 106
    .local v1, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_0

    iget v3, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v6, 0x6

    if-eq v3, v6, :cond_0

    iget v3, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->uid:I

    iget v6, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->uid:I

    if-eq v3, v6, :cond_2

    :cond_0
    move v3, v5

    :goto_2
    iput-boolean v3, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFirst:Z

    .line 109
    move-object v2, v1

    .line 110
    iput-boolean v4, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isLast:Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v2    # "lastMessage":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v3

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v2    # "lastMessage":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_2
    move v3, v4

    .line 106
    goto :goto_2

    .line 112
    .end local v1    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_3
    if-eqz v2, :cond_4

    .line 113
    iput-boolean v5, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isLast:Z

    .line 115
    :cond_4
    return-object p1
.end method

.method public setBottomLoadingView(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V
    .locals 0
    .param p1, "bottomLoadinView"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->bottomLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .line 129
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->items:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public setSearchedViewBackgroundColor(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->weakReferences:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 46
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 48
    .local v5, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .line 49
    .local v3, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    if-nez v3, :cond_1

    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v6, v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v6, v6, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    if-ne v6, p1, :cond_0

    .line 52
    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getSearchedMessageColorAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 53
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v3    # "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    .end local v5    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 59
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 60
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 61
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 63
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_3
    return-void
.end method

.method public setTimeIsVisible(Z)V
    .locals 10
    .param p1, "isTimeVisible"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->isTimeVisible:Z

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->weakReferences:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 70
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 72
    .local v5, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .line 73
    .local v3, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    if-nez v3, :cond_1

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->setTimeIsVisibleAnim(Z)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "animator":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 82
    .end local v0    # "animator":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v3    # "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    .end local v5    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 83
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 84
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 85
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 87
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_3
    return-void
.end method

.method public setTopLoadingView(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V
    .locals 0
    .param p1, "topLoadingView"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->topLoadingView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .line 125
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->isTimeVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->setTimeIsVisible(Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
