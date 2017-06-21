.class public Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;
.super Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.source "NewPhotoTagsFragment.java"


# instance fields
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
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;-><init>(I)V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->profiles:Landroid/util/SparseArray;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->profiles:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 42
    return-void
.end method

.method protected openPhoto(Lcom/vkcoffee/android/Photo;)V
    .locals 13
    .param p1, "photo"    # Lcom/vkcoffee/android/Photo;

    .prologue
    const-wide v4, -0x3f3e6c0000000000L    # -9000.0

    .line 46
    move-object v12, p1

    check-cast v12, Lcom/vkcoffee/android/TaggedPhoto;

    .line 47
    .local v12, "tp":Lcom/vkcoffee/android/TaggedPhoto;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->profiles:Landroid/util/SparseArray;

    iget v3, v12, Lcom/vkcoffee/android/TaggedPhoto;->ownerID:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iput-object v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    .line 48
    new-instance v11, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v11}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 49
    .local v11, "e":Lcom/vkcoffee/android/NewsEntry;
    const/4 v2, 0x1

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 50
    iget v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->id:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 51
    iget v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->ownerID:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 52
    iget v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->userID:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 53
    iget-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-direct {v3, v12}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->date:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 58
    iget v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->nLikes:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 59
    iget v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->nComments:I

    iput v2, v11, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 60
    iget-object v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 62
    iget-object v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 64
    :cond_0
    iget-wide v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->lat:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->lon:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 65
    new-instance v1, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v12, Lcom/vkcoffee/android/TaggedPhoto;->lat:D

    iget-wide v4, v12, Lcom/vkcoffee/android/TaggedPhoto;->lon:D

    const-string/jumbo v6, ""

    iget-object v7, v12, Lcom/vkcoffee/android/TaggedPhoto;->geoAddress:Ljava/lang/String;

    const/16 v8, -0x2328

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 66
    .local v1, "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    iget-object v2, v11, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v1    # "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    :cond_1
    const/16 v2, 0x8

    iget-boolean v3, v12, Lcom/vkcoffee/android/TaggedPhoto;->isLiked:Z

    invoke-virtual {v11, v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 69
    const/4 v2, 0x2

    iget-boolean v3, v12, Lcom/vkcoffee/android/TaggedPhoto;->canComment:Z

    invoke-virtual {v11, v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "entry"

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    const-string/jumbo v3, "placer_profile"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->profiles:Landroid/util/SparseArray;

    iget v4, v12, Lcom/vkcoffee/android/TaggedPhoto;->tagPlacerID:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    const-string/jumbo v2, "tag_id"

    iget v3, v12, Lcom/vkcoffee/android/TaggedPhoto;->tagID:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-class v2, Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 75
    return-void
.end method
