.class Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$8;
.super Lcom/vkcoffee/android/api/SimpleListCallback;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleListCallback",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V
    .locals 0

    .prologue
    .line 1
    .local p2, "$anonymous0":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<Lcom/vkcoffee/android/Photo;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 475
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
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
    .line 477
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Photo;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleListCallback;->success(Lcom/vkcoffee/android/data/VKList;)V

    .line 478
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 479
    return-void
.end method
