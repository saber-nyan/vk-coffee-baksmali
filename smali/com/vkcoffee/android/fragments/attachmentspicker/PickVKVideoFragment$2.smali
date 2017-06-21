.class Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PickVKVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->doLoadData()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;

    .prologue
    const/4 v3, 0x1

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTabs:Ljava/util/List;

    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTitles:Ljava/util/List;

    .line 223
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v1, v3}, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$002(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$000(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;->disableRefresh()V

    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$000(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$100(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Landroid/app/Fragment;)V

    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTabs:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$000(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTitles:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    const v2, 0x7f080588

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget v0, p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->uploadedCount:I

    if-lez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTitles:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    const v2, 0x7f08058a

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v1, v3}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$202(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$200(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->disableRefresh()V

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$200(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$100(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Landroid/app/Fragment;)V

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTabs:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$200(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    iget v0, p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->userVideosCount:I

    if-lez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v1, v3}, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$302(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$300(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;->disableRefresh()V

    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTabs:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$300(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$300(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$100(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Landroid/app/Fragment;)V

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTitles:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    const v2, 0x7f08059d

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    iget v0, p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->albumsCount:I

    if-lez v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v1, v3}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$402(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$400(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->disableRefresh()V

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTabs:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$400(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTitles:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    const v2, 0x7f08058b

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$400(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$100(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Landroid/app/Fragment;)V

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->access$500(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Z

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->this$0:Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->dataLoaded()V

    .line 256
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;->success(Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;)V

    return-void
.end method
