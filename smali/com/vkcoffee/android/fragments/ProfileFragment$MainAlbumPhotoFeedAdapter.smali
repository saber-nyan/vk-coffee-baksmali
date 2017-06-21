.class Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainAlbumPhotoFeedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/util/List;Lme/grishka/appkit/views/UsableRecyclerView;)V
    .locals 0
    .param p3, "list"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;",
            "Lme/grishka/appkit/views/UsableRecyclerView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p2, "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1004
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/util/List;Lme/grishka/appkit/views/UsableRecyclerView;)V

    .line 1005
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;Z)V
    .locals 0

    .prologue
    .line 1002
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;->dataLoading:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;)Lme/grishka/appkit/utils/Preloader;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    return-object v0
.end method


# virtual methods
.method public loadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;->dataLoading:Z

    .line 1009
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGet;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mainAlbum:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/api/photos/PhotosGet;-><init>(IIII)V

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$MainAlbumPhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1024
    return-void
.end method
