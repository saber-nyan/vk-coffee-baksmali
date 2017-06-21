.class Lcom/vkcoffee/android/fragments/ProfileFragment$11;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->openProfilePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 2047
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 8
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
    .local p1, "photos":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Photo;>;"
    const/4 v7, 0x0

    .line 2049
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2050
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0802f5

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2064
    :goto_0
    return-void

    .line 2054
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;II)V

    .line 2055
    .local v0, "callback":Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;
    new-instance v2, Lcom/vkcoffee/android/PhotoViewer;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p1, v7, v0}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    .line 2056
    .local v2, "viewer":Lcom/vkcoffee/android/PhotoViewer;
    iput-object v2, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    .line 2057
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v3

    if-lez v3, :cond_1

    .line 2058
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const v4, 0x7f08057b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2062
    .local v1, "string":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/PhotoViewer;->setTitle(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v2}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    goto :goto_0

    .line 2060
    .end local v1    # "string":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const v4, 0x7f0800f2

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "string":Ljava/lang/String;
    goto :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$11;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
