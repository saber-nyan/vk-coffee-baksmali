.class public Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "ChatLinkAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/Link;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;

.field private nextFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 40
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;

    .line 41
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static create(ILcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;)Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
    .locals 4
    .param p0, "peer"    # I
    .param p1, "type"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string/jumbo v2, "local_type"

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;-><init>()V

    .line 36
    .local v1, "fr":Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "local_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    move-result-object v0

    .line 74
    .local v0, "type":Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;
    if-nez p1, :cond_0

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 77
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$2;->$SwitchMap$com$vkontakte$android$fragments$messages$ChatLinkAttachmentHistoryFragment$Type:[I

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 79
    :pswitch_0
    const-class v1, Lcom/vkcoffee/android/Link;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    invoke-static {v1, v2, v3, p2}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->create(Ljava/lang/Class;ILjava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)V

    .line 80
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Adapter;

    return-object v0
.end method

.method synthetic lambda$onCreateContentView$406(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 61
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 62
    .local v3, "rs":Landroid/content/res/Resources;
    const v5, 0x7f0a00f5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    add-int v2, v5, v6

    .line 63
    .local v2, "padding":I
    new-instance v0, Lcom/vkcoffee/android/ui/util/DividerDrawable;

    const/high16 v5, 0x27000000

    invoke-direct {v0, v2, v5}, Lcom/vkcoffee/android/ui/util/DividerDrawable;-><init>(II)V

    .line 64
    .local v0, "dividerDrawable":Lcom/vkcoffee/android/ui/util/DividerDrawable;
    new-instance v1, Lme/grishka/appkit/views/DividerItemDecoration;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-direct {v1, v0, v5}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 65
    .local v1, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v5

    invoke-virtual {v1, v5}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 66
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 68
    return-object v4
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->loadData()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->dataLoaded()V

    goto :goto_0
.end method
