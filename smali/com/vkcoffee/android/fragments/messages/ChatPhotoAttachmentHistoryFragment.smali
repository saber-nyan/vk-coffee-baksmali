.class public Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;
.super Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.source "ChatPhotoAttachmentHistoryFragment.java"


# instance fields
.field private nextFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 31
    :cond_0
    const-class v0, Lcom/vkcoffee/android/Photo;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->create(Ljava/lang/Class;ILjava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 42
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->onAttach(Landroid/app/Activity;)V

    .line 19
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->loadData()V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->dataLoaded()V

    goto :goto_0
.end method
