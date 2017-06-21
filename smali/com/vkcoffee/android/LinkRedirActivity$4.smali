.class Lcom/vkcoffee/android/LinkRedirActivity$4;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LinkRedirActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$4;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$4;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 652
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;)V
    .locals 4
    .param p1, "r"    # Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;

    .prologue
    .line 639
    iget-object v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;->albums:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;->system:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 640
    iget-object v1, p1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 641
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget v2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/16 v3, -0x2328

    if-ne v2, v3, :cond_0

    .line 642
    new-instance v2, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;

    invoke-direct {v2, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;-><init>(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$4;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 645
    .end local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$4;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 646
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$4;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 647
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 636
    check-cast p1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$4;->success(Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;)V

    return-void
.end method
