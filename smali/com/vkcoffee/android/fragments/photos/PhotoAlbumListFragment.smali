.class public Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "PhotoAlbumListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;,
        Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$EmptyPhotoAlbumViewHolder;,
        Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumViewHolder;,
        Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;,
        Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/api/PhotoAlbum;",
        ">;"
    }
.end annotation


# static fields
.field private static final EDIT_RESULT:I = 0x2067

.field private static final ITEM_RATIO:F = 0.75f

.field private static final SELECT_RESULT:I = 0x2066


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

.field private isAdmin:Z

.field private itemWidth:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private select:Z

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 68
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->doDelete(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->itemWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->editAlbum(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->copyLink(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->isAdmin:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->select:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->updateItemSize(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private copyLink(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 4
    .param p1, "a"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 348
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://vk.com/album"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080290

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 350
    return-void
.end method

.method private doDelete(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "a"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 333
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosDeleteAlbum;

    iget v2, p1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    neg-int v0, v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAlbum;-><init>(II)V

    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;

    .line 334
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/PhotoAlbum;)V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAlbum;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 344
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private editAlbum(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 5
    .param p1, "a"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "album"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v4, 0x11

    .line 367
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    const/16 v2, 0x2067

    .line 369
    invoke-virtual {v1, p0, v2}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 370
    return-void
.end method

.method private updateItemSize(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 233
    int-to-float v2, p1

    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x43700000    # 240.0f

    :goto_0
    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 234
    .local v0, "cols":I
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v1, v2

    sub-int v1, p1, v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->itemWidth:I

    .line 235
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 236
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->notifyDataSetChanged()V

    .line 237
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$5;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    return-void

    .line 233
    .end local v0    # "cols":I
    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_0
.end method


# virtual methods
.method public deleteAlbum(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "a"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 319
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08011a

    .line 320
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08011b

    .line 321
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$7;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/api/PhotoAlbum;)V

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    return-void
.end method

.method public disableRefresh()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->setRefreshEnabled(Z)V

    .line 283
    return-void
.end method

.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 249
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;

    iget v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "select_album"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;-><init>(IZ)V

    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$6;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$6;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Landroid/app/Fragment;)V

    .line 250
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 271
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 286
    const/16 v3, 0x2066

    if-ne p1, v3, :cond_0

    if-ne p2, v4, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 290
    :cond_0
    const/16 v3, 0x2067

    if-ne p1, v3, :cond_2

    if-ne p2, v4, :cond_2

    .line 291
    const-string/jumbo v3, "album"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 292
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    const/4 v2, 0x0

    .line 293
    .local v2, "insertAt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 294
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_1

    .line 295
    add-int/lit8 v2, v1, 0x1

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iget v4, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-ne v3, v4, :cond_3

    .line 298
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->notifyItemChanged(I)V

    .line 316
    .end local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v1    # "i":I
    .end local v2    # "insertAt":I
    :cond_2
    :goto_1
    return-void

    .line 293
    .restart local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .restart local v1    # "i":I
    .restart local v2    # "insertAt":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->notifyItemInserted(I)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 135
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 136
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    .line 137
    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    if-gez v0, :cond_6

    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->isAdmin:Z

    .line 138
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "select"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "select_album"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->select:Z

    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "__is_tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->loadData()V

    .line 147
    :cond_4
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->select:Z

    if-nez v0, :cond_5

    .line 148
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->setHasOptionsMenu(Z)V

    .line 150
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 137
    goto :goto_0

    .line 141
    :cond_7
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.PHOTO_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "com.vkcoffee.android.PHOTO_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "com.vkcoffee.android.UPDATE_ALBUM_COVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method protected onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 216
    .local v0, "glm":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 228
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 155
    const v2, 0x7f11000b

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    const v2, 0x7f100201

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 157
    .local v0, "item":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->isAdmin:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "select_album"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 158
    .local v1, "showCreate":Z
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    return-void

    .line 157
    .end local v1    # "showCreate":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 127
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 131
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100201

    if-ne v1, v2, :cond_0

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "owner_id"

    iget v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v4, 0x11

    .line 168
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    const/16 v2, 0x2067

    .line 170
    invoke-virtual {v1, p0, v2}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 172
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setDrawSelectorOnTop(Z)V

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(I)V

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$3;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 205
    return-void
.end method

.method public setCover(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cover"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 354
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget v2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-ne v2, p1, :cond_0

    .line 355
    iput-object p2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 360
    .end local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    :cond_1
    return-void
.end method
