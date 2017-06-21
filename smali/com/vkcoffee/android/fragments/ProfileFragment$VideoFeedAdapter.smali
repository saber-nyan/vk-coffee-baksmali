.class Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/utils/Preloader$Callback;
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoFeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;",
        ">;",
        "Lme/grishka/appkit/utils/Preloader$Callback",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;",
        "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;"
    }
.end annotation


# instance fields
.field protected dataLoading:Z

.field protected preloader:Lme/grishka/appkit/utils/Preloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/grishka/appkit/utils/Preloader",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1213
    .local p2, "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/VideoFile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->dataLoading:Z

    .line 1211
    new-instance v0, Lme/grishka/appkit/utils/Preloader;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lme/grishka/appkit/utils/Preloader;-><init>(Lme/grishka/appkit/utils/Preloader$Callback;I)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    .line 1214
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lme/grishka/appkit/utils/Preloader;->onDataLoaded(Ljava/util/List;Z)V

    .line 1215
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1230
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoFile;

    iget-object v0, v0, Lcom/vkcoffee/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isDataLoading()Z
    .locals 1

    .prologue
    .line 1268
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->dataLoading:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/video/VideoGet;->get(IIII)Lcom/vkcoffee/android/api/video/VideoGet;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->dataLoading:Z

    .line 1258
    return-void
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/VideoFile;>;"
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->bind(Ljava/lang/Object;)V

    .line 1223
    return-void
.end method

.method public onClearItems()V
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1265
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1218
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 1280
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 1283
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->onScrolledToLastItem()V

    .line 1277
    return-void
.end method

.method public updateList()V
    .locals 0

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;->notifyDataSetChanged()V

    .line 1239
    return-void
.end method
