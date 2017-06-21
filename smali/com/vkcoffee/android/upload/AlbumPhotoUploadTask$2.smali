.class Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "AlbumPhotoUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$2;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->access$002(Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;Lcom/vkcoffee/android/Photo;)Lcom/vkcoffee/android/Photo;

    .line 88
    :cond_0
    return-void
.end method
