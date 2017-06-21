.class Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;
.super Ljava/lang/Object;
.source "PhotosFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PhotosFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PhotosFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 139
    new-instance v1, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 140
    .local v1, "userPhotos":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v3, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotosFragment;

    const v4, 0x7f080579

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/fragments/PhotosFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 141
    const/16 v2, -0x2328

    iput v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 142
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PhotosFragment;->access$000(Lcom/vkcoffee/android/fragments/PhotosFragment;)I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "album"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    const-string/jumbo v2, "no_album_header"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotosFragment;

    new-instance v3, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/PhotosFragment;->access$102(Lcom/vkcoffee/android/fragments/PhotosFragment;Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 147
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotosFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PhotosFragment;->access$100(Lcom/vkcoffee/android/fragments/PhotosFragment;)Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->val$tabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotosFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PhotosFragment;->access$100(Lcom/vkcoffee/android/fragments/PhotosFragment;)Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v3, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->val$titles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v4, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotosFragment;

    const v5, 0x7f080351

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/fragments/PhotosFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotosFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->val$tabs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PhotosFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PhotosFragment$1;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/PhotosFragment$1;->val$titles:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/PhotosFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 151
    return-void
.end method
