.class public Lcom/vkcoffee/android/fragments/GameCardFragment;
.super Lcom/vkcoffee/android/fragments/PostListFragment;
.source "GameCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;,
        Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;,
        Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;
    }
.end annotation


# static fields
.field public static final INVITE_RESULT:I = 0xf3f

.field private static final KEY_APP:Ljava/lang/String; = "app"

.field private static final KEY_APP_INDEX:Ljava/lang/String; = "app_index_in_list"


# instance fields
.field private apiApplication:Lcom/vkcoffee/android/data/ApiApplication;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private buttonPlay:Landroid/widget/TextView;

.field private drawablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private fixedPostId:I

.field private gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

.field private groupId:I

.field private iOnListViewCreated:Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;

.field private imageViewIcon:Lcom/vkcoffee/android/ui/RoundedImageView2;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverHideRequest:Landroid/content/BroadcastReceiver;

.field private receiverReloadInstalled:Landroid/content/BroadcastReceiver;

.field private textViewGenre:Landroid/widget/TextView;

.field private textViewName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 149
    const v0, 0x7f030094

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PostListFragment;-><init>(I)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->drawablesList:Ljava/util/ArrayList;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->groupId:I

    .line 98
    new-instance v0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/GameCardFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$1;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    invoke-direct {v0, v1, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;-><init>(Landroid/view/View$OnClickListener;Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->iOnListViewCreated:Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;

    .line 112
    new-instance v0, Lcom/vkcoffee/android/fragments/GameCardFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$2;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/vkcoffee/android/fragments/GameCardFragment$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$3;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Lcom/vkcoffee/android/fragments/GameCardFragment$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$4;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiverReloadInstalled:Landroid/content/BroadcastReceiver;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/GameCardFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->loadWall(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->startHidingRequest()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/GameCardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->refreshing:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/GameCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->fixedPostId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/vkcoffee/android/fragments/GameCardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->fixedPostId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/GameCardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->refreshing:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/GameCardFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/util/Iterator;Lcom/vkcoffee/android/NewsEntry;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Iterator;
    .param p1, "x1"    # Lcom/vkcoffee/android/NewsEntry;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->removeNewsFromIterator(Ljava/util/Iterator;Lcom/vkcoffee/android/NewsEntry;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/fragments/GameCardFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/vkcoffee/android/fragments/GameCardFragment;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p1, "x1"    # Lme/grishka/appkit/api/APIRequest;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/fragments/GameCardFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->drawablesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->doLoadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/fragments/GameCardFragment;Lcom/vkcoffee/android/data/ApiApplication;)Lcom/vkcoffee/android/data/ApiApplication;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->fillHeader()V

    return-void
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/fragments/GameCardFragment;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p1, "x1"    # Lme/grishka/appkit/api/APIRequest;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-object p1
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/fragments/GameCardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->groupId:I

    return p1
.end method

.method public static createArgs(Lcom/vkcoffee/android/data/ApiApplication;ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "application"    # Lcom/vkcoffee/android/data/ApiApplication;
    .param p1, "index"    # I
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "clickSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 490
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 491
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 492
    const-string/jumbo v1, "app_index_in_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    const-string/jumbo v1, "visitSource"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo v1, "clickSource"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-object v0
.end method

.method private fillHeader()V
    .locals 5

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->imageViewIcon:Lcom/vkcoffee/android/ui/RoundedImageView2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewGenre:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->buttonPlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->imageViewIcon:Lcom/vkcoffee/android/ui/RoundedImageView2;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->imageViewIcon:Lcom/vkcoffee/android/ui/RoundedImageView2;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0202bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 325
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v0

    iget-object v3, v0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    aget-object v0, v3, v0

    .line 324
    invoke-static {v1, v2, v0}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewGenre:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->buttonPlay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->installedOnDevice:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0801d6

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 330
    :cond_0
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 328
    :cond_2
    const v0, 0x7f0801c1

    goto :goto_1
.end method

.method private getApplicationIndex()I
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "app_index_in_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$onViewCreated$367(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private loadWall(II)V
    .locals 7
    .param p1, "_offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 441
    if-lez p1, :cond_0

    .line 442
    iget p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->offset:I

    .line 446
    :goto_0
    move v2, p1

    .line 447
    .local v2, "offset":I
    const/4 v6, 0x1

    .line 448
    .local v6, "ownerOnly":Z
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallGet;

    iget v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->groupId:I

    const/4 v4, 0x1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/wall/WallGet;-><init>(IIIZZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/GameCardFragment$10;

    invoke-direct {v1, p0, p0, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment$10;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;Landroid/app/Fragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 485
    return-void

    .line 444
    .end local v2    # "offset":I
    .end local v6    # "ownerOnly":Z
    :cond_0
    iput v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->offset:I

    goto :goto_0
.end method

.method private static removeNewsFromIterator(Ljava/util/Iterator;Lcom/vkcoffee/android/NewsEntry;Ljava/util/Collection;)Z
    .locals 4
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;",
            "Lcom/vkcoffee/android/NewsEntry;",
            "Ljava/util/Collection",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    .local p2, "newsEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/vkcoffee/android/NewsEntry;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 500
    .local v0, "ee":Lcom/vkcoffee/android/NewsEntry;
    iget v2, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v2, v3, :cond_0

    .line 501
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 502
    const/4 v1, 0x1

    .line 505
    .end local v0    # "ee":Lcom/vkcoffee/android/NewsEntry;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startHidingRequest()V
    .locals 4

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 402
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/GameCardFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->refreshing:Z

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->loadInitial(ZI)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->loadWall(II)V

    goto :goto_0
.end method

.method public fadeDrawables()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 333
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v5, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;>;"
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->drawablesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;>;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 336
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 337
    .local v8, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;>;"
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .line 338
    .local v4, "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    if-nez v4, :cond_0

    .line 339
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    .end local v4    # "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    .end local v8    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .line 346
    .restart local v4    # "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    const-string/jumbo v10, "currentColor"

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->getCurrentColor()I

    move-result v13

    aput v13, v11, v12

    const/4 v12, -0x1

    aput v12, v11, v14

    invoke-static {v4, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 347
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v10, Landroid/animation/ArgbEvaluator;

    invoke-direct {v10}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 348
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    .end local v4    # "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 351
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v10, 0x190

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 352
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 353
    new-instance v9, Lcom/vkcoffee/android/fragments/GameCardFragment$7;

    invoke-direct {v9, p0, v5}, Lcom/vkcoffee/android/fragments/GameCardFragment$7;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 370
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 371
    .local v0, "activity":Landroid/app/Activity;
    new-instance v9, Lcom/vkcoffee/android/fragments/GameCardFragment$8;

    invoke-direct {v9, p0, v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$8;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;Landroid/app/Activity;)V

    .line 384
    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/GameCardFragment$8;->start()V

    .line 385
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    .line 386
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v9, v9, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServerReal:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/GameRequest;

    .line 387
    .local v6, "gameRequest":Lcom/vkcoffee/android/data/GameRequest;
    iget-boolean v10, v6, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    if-nez v10, :cond_3

    .line 388
    invoke-static {v0, v6}, Lcom/vkcoffee/android/data/Games;->hideRequest(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V

    .line 390
    :cond_3
    iput-boolean v14, v6, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    goto :goto_2

    .line 393
    .end local v6    # "gameRequest":Lcom/vkcoffee/android/data/GameRequest;
    :cond_4
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 3

    .prologue
    .line 284
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    if-nez v2, :cond_0

    .line 285
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v1

    .line 286
    .local v1, "newsAdapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    new-instance v0, Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;-><init>()V

    .line 287
    .local v0, "mergeAdapter":Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 288
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 289
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 291
    .end local v0    # "mergeAdapter":Lcom/vkcoffee/android/fragments/GameCardFragment$MergeRecyclerAdapterProvider;
    .end local v1    # "newsAdapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    return-object v2
.end method

.method public getApplication()Lcom/vkcoffee/android/data/ApiApplication;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

    return-object v0
.end method

.method protected getListReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string/jumbo v0, "wall_game"

    return-object v0
.end method

.method synthetic lambda$onViewCreated$368(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "visitSource"

    const-string/jumbo v5, "direct"

    invoke-static {v3, v4, v5}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "clickSource"

    const-string/jumbo v6, "catalog"

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/data/Games;->open(Lcom/vkcoffee/android/data/ApiApplication;Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startHidingRequest$369()V
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->fadeDrawables()V

    .line 406
    :cond_0
    return-void
.end method

.method public loadInitial(ZI)V
    .locals 5
    .param p1, "refresh"    # Z
    .param p2, "count"    # I

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 412
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v1

    .line 413
    .local v1, "application":Lcom/vkcoffee/android/data/ApiApplication;
    new-instance v2, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;

    iget v3, v1, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/db/Database;->getInst(Landroid/content/Context;)Lcom/vkcoffee/android/data/db/Database;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;-><init>(ILcom/vkcoffee/android/data/db/Database;)V

    new-instance v3, Lcom/vkcoffee/android/fragments/GameCardFragment$9;

    invoke-direct {v3, p0, p0, v0, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment$9;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;Landroid/app/Fragment;Landroid/app/Activity;I)V

    .line 414
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/apps/AppsGetGamePage;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 437
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 438
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 161
    const/16 v1, 0xf3f

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 162
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "b":Landroid/os/Bundle;
    new-instance v1, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/vkcoffee/android/fragments/GameCardFragment$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$5;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    .line 164
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 186
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/PostListFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 201
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.games.HIDE_REQUEST_ALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 203
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiverReloadInstalled:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.games.RELOAD_INSTALLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 204
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.games.RELOAD_REQUESTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 205
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/CardItemDecorator;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 770
    iget v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v5, v6, :cond_0

    move v1, v3

    .line 771
    .local v1, "isTabletDecorator":Z
    :goto_0
    new-instance v0, Lcom/vkcoffee/android/ui/CardItemDecorator;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v1, :cond_1

    :goto_1
    invoke-direct {v0, v5, v3}, Lcom/vkcoffee/android/ui/CardItemDecorator;-><init>(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 772
    .local v0, "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v0, v3, v5, v6, v4}, Lcom/vkcoffee/android/ui/CardItemDecorator;->setPadding(IIII)V

    .line 773
    if-eqz v1, :cond_2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 774
    .local v2, "pad":I
    :goto_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3, v2, v4, v2, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 775
    return-object v0

    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    .end local v1    # "isTabletDecorator":Z
    .end local v2    # "pad":I
    :cond_0
    move v1, v4

    .line 770
    goto :goto_0

    .restart local v1    # "isTabletDecorator":Z
    :cond_1
    move v3, v4

    .line 771
    goto :goto_1

    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    :cond_2
    move v2, v4

    .line 773
    goto :goto_2
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/PostListFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->iOnListViewCreated:Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->iOnListViewCreated:Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplicationIndex()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;->onRecycleViewCreated(Lme/grishka/appkit/views/UsableRecyclerView;I)V

    .line 196
    :cond_0
    return-object v0
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 5
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    const/4 v2, 0x0

    .line 296
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->data:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 297
    .local v1, "sizeAll":I
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 298
    .local v0, "size":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->gameAdapter:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    add-int v4, v1, v0

    if-lez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->build(Z)V

    .line 299
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 300
    return-void

    .end local v0    # "size":I
    .end local v1    # "sizeAll":I
    :cond_1
    move v1, v2

    .line 296
    goto :goto_0

    .restart local v1    # "sizeAll":I
    :cond_2
    move v0, v2

    .line 297
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiverReloadInstalled:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onDestroy()V

    .line 217
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onDestroyView()V

    .line 222
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->imageViewIcon:Lcom/vkcoffee/android/ui/RoundedImageView2;

    .line 223
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewName:Landroid/widget/TextView;

    .line 224
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->buttonPlay:Landroid/widget/TextView;

    .line 225
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewGenre:Landroid/widget/TextView;

    .line 226
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 156
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 157
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f100215

    const/4 v3, 0x0

    .line 230
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 234
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->setRefreshEnabled(Z)V

    .line 236
    const v1, 0x7f100214

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 237
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/GameCardFragment$6;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$6;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 252
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$1;->lambdaFactory$(Landroid/view/GestureDetector;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/RoundedImageView2;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->imageViewIcon:Lcom/vkcoffee/android/ui/RoundedImageView2;

    .line 254
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewName:Landroid/widget/TextView;

    .line 255
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->buttonPlay:Landroid/widget/TextView;

    .line 256
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->textViewGenre:Landroid/widget/TextView;

    .line 257
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/GameCardFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->fillHeader()V

    .line 261
    return-void
.end method

.method public setOnListViewCreated(Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;)V
    .locals 2
    .param p1, "iOnListViewCreated"    # Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->iOnListViewCreated:Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;

    .line 317
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplicationIndex()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;->onRecycleViewCreated(Lme/grishka/appkit/views/UsableRecyclerView;I)V

    .line 320
    :cond_0
    return-void
.end method
