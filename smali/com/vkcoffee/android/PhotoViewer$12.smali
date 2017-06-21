.class Lcom/vkcoffee/android/PhotoViewer$12;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->loadPhotoInfo()V
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
        "Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field final synthetic val$p:Lcom/vkcoffee/android/Photo;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/Photo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$12;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iput-object p2, p0, Lcom/vkcoffee/android/PhotoViewer$12;->val$p:Lcom/vkcoffee/android/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1802(Lcom/vkcoffee/android/PhotoViewer;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;

    .line 716
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;)V
    .locals 2
    .param p1, "r"    # Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1802(Lcom/vkcoffee/android/PhotoViewer;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;

    .line 704
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->val$p:Lcom/vkcoffee/android/Photo;

    iget v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/Photo;->nLikes:I

    .line 705
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->val$p:Lcom/vkcoffee/android/Photo;

    iget v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->comments:I

    iput v1, v0, Lcom/vkcoffee/android/Photo;->nComments:I

    .line 706
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->val$p:Lcom/vkcoffee/android/Photo;

    iget v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->tags:I

    iput v1, v0, Lcom/vkcoffee/android/Photo;->nTags:I

    .line 707
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->val$p:Lcom/vkcoffee/android/Photo;

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->liked:Z

    iput-boolean v1, v0, Lcom/vkcoffee/android/Photo;->isLiked:Z

    .line 708
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->val$p:Lcom/vkcoffee/android/Photo;

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;->canComment:Z

    iput-boolean v1, v0, Lcom/vkcoffee/android/Photo;->canComment:Z

    .line 709
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->val$p:Lcom/vkcoffee/android/Photo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    .line 710
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$12;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$12;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget v1, v1, Lcom/vkcoffee/android/PhotoViewer;->curPos:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->onPositionChanged(I)V

    .line 711
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 699
    check-cast p1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/PhotoViewer$12;->success(Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;)V

    return-void
.end method
