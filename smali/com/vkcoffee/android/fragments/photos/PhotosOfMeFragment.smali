.class public Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;
.super Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;
.source "PhotosOfMeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$ShowAllButtonViewHolder;,
        Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$ShowAllButtonAdapter;
    }
.end annotation


# instance fields
.field private allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

.field private newCount:I

.field private newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

.field private newTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/TaggedPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private profiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->profiles:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;-><init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f0802cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->title:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->headerAdapter:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iput v3, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    invoke-direct {v1, p0, v3, v3}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    .line 49
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;-><init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f08057a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->title:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->headerAdapter:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iput v3, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    const v2, 0x7fffffff

    invoke-direct {v1, p0, v3, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->sections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->sections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->refreshing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->profiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->refreshing:Z

    if-eqz v1, :cond_0

    .end local p1    # "offset":I
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 62
    .restart local p1    # "offset":I
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;Landroid/app/Fragment;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 88
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-super {p0, v0, p2, p3}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 158
    return-void
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->onAppendItems(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->removeAllAdapters()V

    .line 94
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->showAlbumHeader:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->headerAdapter:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 100
    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newCount:I

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$ShowAllButtonAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$ShowAllButtonAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->headerAdapter:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->allPhotos:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 106
    return-void
.end method

.method protected onPhotoRemoved()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->refresh()V

    .line 163
    return-void
.end method

.method protected openPhoto(Lcom/vkcoffee/android/Photo;)V
    .locals 14
    .param p1, "photo"    # Lcom/vkcoffee/android/Photo;

    .prologue
    const-wide v4, -0x3f3e6c0000000000L    # -9000.0

    .line 109
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "photo"

    invoke-virtual {v12, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 153
    .end local v12    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 116
    :cond_0
    instance-of v2, p1, Lcom/vkcoffee/android/TaggedPhoto;

    if-eqz v2, :cond_3

    move-object v13, p1

    .line 117
    check-cast v13, Lcom/vkcoffee/android/TaggedPhoto;

    .line 118
    .local v13, "tp":Lcom/vkcoffee/android/TaggedPhoto;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->profiles:Landroid/util/SparseArray;

    iget v3, v13, Lcom/vkcoffee/android/TaggedPhoto;->ownerID:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iput-object v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    .line 119
    new-instance v11, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v11}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 120
    .local v11, "e":Lcom/vkcoffee/android/NewsEntry;
    const/4 v2, 0x1

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 121
    iget v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->id:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 122
    iget v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->ownerID:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 123
    iget v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->userID:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 124
    iget-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-direct {v3, v13}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->date:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 129
    iget v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->nLikes:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 130
    iget v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->nComments:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 131
    iget-object v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 133
    iget-object v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 135
    :cond_1
    iget-wide v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->lat:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->lon:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 136
    new-instance v1, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v13, Lcom/vkcoffee/android/TaggedPhoto;->lat:D

    iget-wide v4, v13, Lcom/vkcoffee/android/TaggedPhoto;->lon:D

    const-string/jumbo v6, ""

    iget-object v7, v13, Lcom/vkcoffee/android/TaggedPhoto;->geoAddress:Ljava/lang/String;

    const/16 v8, -0x2328

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 137
    .local v1, "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    iget-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v1    # "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    :cond_2
    const/16 v2, 0x8

    iget-boolean v3, v13, Lcom/vkcoffee/android/TaggedPhoto;->isLiked:Z

    invoke-virtual {v11, v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 140
    const/4 v2, 0x2

    iget-boolean v3, v13, Lcom/vkcoffee/android/TaggedPhoto;->canComment:Z

    invoke-virtual {v11, v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "entry"

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    const-string/jumbo v3, "placer_profile"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->profiles:Landroid/util/SparseArray;

    iget v4, v13, Lcom/vkcoffee/android/TaggedPhoto;->tagPlacerID:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    const-string/jumbo v2, "tag_id"

    iget v3, v13, Lcom/vkcoffee/android/TaggedPhoto;->tagID:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-class v2, Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v11    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v13    # "tp":Lcom/vkcoffee/android/TaggedPhoto;
    :cond_3
    new-instance v2, Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->data:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->newTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    .line 149
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v3, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/PhotoViewer;->setTitle(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/PhotoViewer;->setDisplayTotal(I)V

    .line 151
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v4, v4, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/PhotoViewer;->setAlbumIDs(II)V

    .line 152
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    goto/16 :goto_0
.end method
