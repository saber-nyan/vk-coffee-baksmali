.class public Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;
.super Lcom/vkcoffee/android/fragments/VKTabbedFragment;
.source "ChatAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;
    }
.end annotation


# instance fields
.field private audios:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

.field private docs:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

.field private links:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

.field private photos:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

.field private videos:Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->setTabsAutoLoad(Z)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->photos:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->videos:Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->audios:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->docs:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->links:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->setTitle(I)V

    .line 44
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 51
    .local v4, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "peer":I
    new-instance v5, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-direct {v5}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->photos:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v1, "args":Landroid/os/Bundle;
    new-instance v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 56
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    const/16 v5, -0x232b

    iput v5, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 57
    iput v2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    .line 58
    const v5, 0x7f0800c2

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 59
    const/16 v5, 0x2328

    iput v5, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 60
    const-string/jumbo v5, "album"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    const-string/jumbo v5, "no_album_header"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->photos:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-virtual {v5, v1}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "args":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "no_autoload"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    new-instance v5, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;

    invoke-direct {v5}, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->videos:Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;

    .line 67
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "args":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "peer_id"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->videos:Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;

    invoke-virtual {v5, v1}, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->create(I)Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->docs:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    .line 73
    sget-object v5, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->link:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    invoke-static {v2, v5}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->create(ILcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;)Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->links:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    .line 74
    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->create(I)Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->audios:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .line 76
    new-instance v3, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, p0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;I)V

    .line 83
    .local v3, "tabs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 84
    return-void
.end method
