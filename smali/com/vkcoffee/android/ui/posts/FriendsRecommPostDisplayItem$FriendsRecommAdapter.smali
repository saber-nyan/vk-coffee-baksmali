.class Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "FriendsRecommPostDisplayItem.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;
.implements Lme/grishka/appkit/utils/Preloader$Callback;
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsRecommAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;",
        ">;",
        "Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;",
        "Lme/grishka/appkit/utils/Preloader$Callback",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;",
        "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;"
    }
.end annotation


# instance fields
.field private dataLoading:Z

.field private preloader:Lme/grishka/appkit/utils/Preloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/grishka/appkit/utils/Preloader",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 232
    new-instance v0, Lme/grishka/appkit/utils/Preloader;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lme/grishka/appkit/utils/Preloader;-><init>(Lme/grishka/appkit/utils/Preloader$Callback;I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->dataLoading:Z

    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lme/grishka/appkit/utils/Preloader;->onDataLoaded(Ljava/util/List;Z)V

    .line 237
    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;)Lme/grishka/appkit/utils/Preloader;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->dataLoading:Z

    return p1
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isDataLoading()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->dataLoading:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->dataLoading:Z

    .line 272
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->nextFrom:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 287
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 288
    return-void
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 230
    check-cast p1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->bind(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public onClearItems()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 241
    new-instance v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->onScrolledToLastItem()V

    .line 313
    return-void
.end method

.method public updateList()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method
