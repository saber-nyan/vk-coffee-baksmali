.class Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->loadMore()V
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
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 1199
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;Z)V

    .line 1200
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 3
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
    .line 1192
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Photo;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;)I

    move-result v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;I)V

    .line 1193
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;I)V

    .line 1194
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;Z)V

    .line 1195
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/PhotoViewer;->appendPhotos(Ljava/util/List;)V

    .line 1196
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
