.class Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "EditAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/PhotoAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    .line 198
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "result"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, "r":Landroid/content/Intent;
    const-string v1, "album"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 203
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 204
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$1;->success(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    return-void
.end method
