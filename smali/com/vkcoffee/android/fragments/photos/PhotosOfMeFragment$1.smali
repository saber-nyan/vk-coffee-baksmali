.class Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PhotosOfMeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;)V
    .locals 8
    .param p1, "result"    # Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v4, p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->photos:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v4}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v4

    iput v4, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 67
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$000(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$100(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Z

    move-result v4

    or-int v1, v2, v4

    .line 68
    .local v1, "needUpdateTags":Z
    if-eqz v1, :cond_2

    .line 69
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    iget-object v4, p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->newTags:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v4}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v4

    invoke-static {v2, v4}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$202(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;I)I

    .line 70
    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$300(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$300(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->newTags:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->profiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$400(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v4, p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->profiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->profiles:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "needUpdateTags":Z
    :cond_1
    move v2, v3

    .line 67
    goto :goto_0

    .line 78
    .restart local v1    # "needUpdateTags":Z
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    iget-object v4, p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;->photos:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v2, v4}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    .line 79
    if-eqz v1, :cond_3

    .line 80
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$500(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$300(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$600(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    move-result-object v2

    new-instance v4, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$300(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const v7, 0x7fffffff

    invoke-direct {v4, v5, v6, v7}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V

    iput-object v4, v2, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    .line 83
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$700(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    move-result-object v2

    new-instance v4, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->access$300(Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v5, v3, v6}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V

    iput-object v4, v2, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    .line 84
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment;->onAppendItems(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotosOfMeFragment$1;->success(Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;)V

    return-void
.end method
