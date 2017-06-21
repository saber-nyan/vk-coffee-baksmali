.class public Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;
.super Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;
.source "ChatDocAttachmentHistoryFragment.java"


# instance fields
.field private nextFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->setRefreshEnabled(Z)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method public static create(I)Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;
    .locals 3
    .param p0, "peer"    # I

    .prologue
    .line 18
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;-><init>()V

    .line 19
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "peer_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    return-object v1
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 48
    :cond_0
    const-class v0, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "peer_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->create(Ljava/lang/Class;ILjava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;Landroid/app/Fragment;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 63
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->loadData()V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->dataLoaded()V

    goto :goto_0
.end method
