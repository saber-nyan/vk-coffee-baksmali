.class public Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "ChatAudioAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;,
        Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$Adapter;

.field private nextFrom:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 48
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$Adapter;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$Adapter;

    .line 59
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Lcom/vkcoffee/android/AudioFile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->showContextMenuFor(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Lcom/vkcoffee/android/AudioFile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->enqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v0

    return v0
.end method

.method public static create(I)Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
    .locals 3
    .param p0, "peer"    # I

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "peer_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;-><init>()V

    .line 44
    .local v1, "fr":Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method

.method private enqueue(Lcom/vkcoffee/android/AudioFile;)Z
    .locals 4
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/4 v1, 0x0

    .line 231
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/AudioPlayerService;->enqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v0

    .line 235
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080089

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 239
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showContextMenuFor(Lcom/vkcoffee/android/AudioFile;)Z
    .locals 5
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/AudioPlayerService;->canEnqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const v2, 0x7f080087

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string/jumbo v2, "enqueue"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080085

    .line 216
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;

    invoke-direct {v4, p0, v1, p1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Ljava/util/List;Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    const/4 v2, 0x1

    .line 227
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 88
    :cond_0
    const-class v0, Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "peer_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->create(Ljava/lang/Class;ILjava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$2;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Landroid/app/Fragment;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 103
    :cond_1
    return-void
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$Adapter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 76
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->loadData()V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->dataLoaded()V

    goto :goto_0
.end method
