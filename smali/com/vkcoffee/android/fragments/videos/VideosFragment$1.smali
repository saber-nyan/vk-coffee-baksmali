.class Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "VideosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/VideosFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;)V
    .locals 9
    .param p1, "result"    # Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;

    .prologue
    const/4 v8, 0x1

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "tabs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-boolean v4, v4, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSelectMode:Z

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$002(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    .line 97
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$000(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    const v3, 0x7f080588

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget v2, p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->uploadedCount:I

    if-lez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    const v3, 0x7f08058a

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-boolean v4, v4, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSelectMode:Z

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$102(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    .line 103
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$100(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    iget v2, p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->userVideosCount:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    if-lez v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-boolean v4, v4, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSelectMode:Z

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$202(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    .line 108
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$200(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    const v3, 0x7f08059d

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    iget v2, p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->albumsCount:I

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    if-lt v2, v8, :cond_3

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-boolean v4, v4, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSelectMode:Z

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$302(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .line 115
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$300(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-virtual {v2, v8}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->setTabsVisible(Z)V

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-virtual {v2, v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 125
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$400(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)V

    .line 126
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->dataLoaded()V

    .line 127
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->access$500(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)V

    .line 128
    return-void

    .line 109
    :cond_5
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    const v3, 0x7f08059e

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "username_ins"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;->success(Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;)V

    return-void
.end method
