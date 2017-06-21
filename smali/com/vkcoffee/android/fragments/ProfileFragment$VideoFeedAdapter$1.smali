.class Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->loadData(II)V
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
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 1254
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->dataLoading:Z

    .line 1255
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1244
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/VideoFile;>;"
    const/4 v1, 0x0

    .line 1245
    .local v1, "z":Z
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->dataLoading:Z

    .line 1246
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    iget-object v0, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    .line 1247
    .local v0, "preloader":Lme/grishka/appkit/utils/Preloader;
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v3}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v4}, Lme/grishka/appkit/utils/Preloader;->getPreloadedData()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 1248
    const/4 v1, 0x1

    .line 1250
    :cond_0
    invoke-virtual {v0, p1, v1}, Lme/grishka/appkit/utils/Preloader;->onDataLoaded(Ljava/util/List;Z)V

    .line 1251
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
