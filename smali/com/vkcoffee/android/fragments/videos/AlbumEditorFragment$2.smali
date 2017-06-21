.class Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "AlbumEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->val$title:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 257
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->val$title:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v2, v2, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    iput-object v2, v1, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "album"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 267
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 268
    return-void
.end method
