.class Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "NewPhotoTagsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;

    iget-object v2, p1, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->photos:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    .line 35
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v2, p1, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->photos:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->profiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;->access$000(Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->profiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;->profiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/NewPhotoTagsFragment$1;->success(Lcom/vkcoffee/android/api/photos/PhotosGetNewTags$Result;)V

    return-void
.end method
