.class public Lcom/vkcoffee/android/fragments/fave/FaveFragment;
.super Lcom/vkcoffee/android/fragments/VKTabbedFragment;
.source "FaveFragment.java"


# instance fields
.field private links:Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

.field private market:Lcom/vkcoffee/android/fragments/market/MarketFragment;

.field private photos:Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;

.field private posts:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

.field private users:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

.field private videos:Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->setTabsAutoLoad(Z)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->users:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->posts:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->links:Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->photos:Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->videos:Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->market:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    return-object v0
.end method


# virtual methods
.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->setTitle(I)V

    .line 36
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 45
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 48
    .local v7, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v2, "b1":Landroid/os/Bundle;
    const-string/jumbo v8, "emptyText"

    const v9, 0x7f0802fc

    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v3, "b2":Landroid/os/Bundle;
    const-string/jumbo v8, "emptyText"

    const v9, 0x7f0802ea

    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v8, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    invoke-direct {v8}, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;-><init>()V

    iput-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->users:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    .line 53
    new-instance v8, Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;

    invoke-direct {v8}, Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;-><init>()V

    iput-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->videos:Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;

    .line 54
    new-instance v8, Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-direct {v8}, Lcom/vkcoffee/android/fragments/market/MarketFragment;-><init>()V

    iput-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->market:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .line 55
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "isFaveMode"

    invoke-virtual {v4, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->market:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-virtual {v8, v4}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    new-instance v8, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    invoke-direct {v8}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;-><init>()V

    iput-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->posts:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    .line 59
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v5, "pargs":Landroid/os/Bundle;
    const-string/jumbo v8, "no_autoload"

    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->posts:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    invoke-virtual {v8, v5}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    new-instance v8, Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;

    invoke-direct {v8}, Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;-><init>()V

    iput-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->photos:Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v1, "args":Landroid/os/Bundle;
    new-instance v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 65
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    const/16 v8, -0x2329

    iput v8, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 66
    const v8, 0x7f080173

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 67
    const/16 v8, 0x2328

    iput v8, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 68
    const-string/jumbo v8, "album"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    const-string/jumbo v8, "no_album_header"

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->photos:Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;

    invoke-virtual {v8, v1}, Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    new-instance v8, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    invoke-direct {v8}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;-><init>()V

    iput-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->links:Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    .line 72
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "args":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string/jumbo v8, "no_autoload"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->links:Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    invoke-virtual {v8, v1}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    new-instance v6, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;

    const/4 v8, 0x5

    invoke-direct {v6, p0, v8}, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;-><init>(Lcom/vkcoffee/android/fragments/fave/FaveFragment;I)V

    .line 83
    .local v6, "tabs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    invoke-virtual {p0, v6, v7}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 84
    return-void
.end method
