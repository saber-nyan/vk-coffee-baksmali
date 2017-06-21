.class Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    .line 431
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 433
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 6

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/PhotoViewer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v3

    invoke-virtual {v3}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v4

    invoke-virtual {v4}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->item:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$13(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/PhotoViewer;)V

    .line 439
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/PhotoViewer;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mainAlbum:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mainAlbum:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/PhotoViewer;->setTitle(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/PhotoViewer;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mainAlbum:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mainAlbum:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/PhotoViewer;->setDisplayTotal(I)V

    .line 441
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    .line 443
    :cond_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    const v2, 0x7f08006f

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    const-string v2, "photos"

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/api/ExtendedUserProfile;->getCounter(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method
