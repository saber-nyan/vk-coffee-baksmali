.class Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;->loadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 531
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;Z)V

    .line 532
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Photo;>;"
    const/4 v1, 0x0

    .line 522
    .local v1, "z":Z
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;Z)V

    .line 523
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v0

    .line 524
    .local v0, "access$8900":Lme/grishka/appkit/utils/Preloader;
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v3

    invoke-virtual {v3}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v4

    invoke-virtual {v4}, Lme/grishka/appkit/utils/Preloader;->getPreloadedData()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 525
    const/4 v1, 0x1

    .line 527
    :cond_0
    invoke-virtual {v0, p1, v1}, Lme/grishka/appkit/utils/Preloader;->onDataLoaded(Ljava/util/List;Z)V

    .line 528
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$AllPhotosPhotoFeedAdapter$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
