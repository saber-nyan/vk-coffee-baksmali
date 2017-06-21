.class Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "AlbumEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
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
    .line 231
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->val$title:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 235
    new-instance v0, Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/VideoAlbum;-><init>()V

    .line 236
    .local v0, "album":Lcom/vkcoffee/android/api/VideoAlbum;
    const/4 v2, 0x0

    iput v2, v0, Lcom/vkcoffee/android/api/VideoAlbum;->count:I

    .line 237
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    .line 238
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mOwnerId:I

    iput v2, v0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    .line 239
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v2, v2, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    iput-object v2, v0, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    .line 240
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->val$title:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    .line 241
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    iput v2, v0, Lcom/vkcoffee/android/api/VideoAlbum;->lastUpdated:I

    .line 243
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "album"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 246
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 247
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;->success(Ljava/lang/Integer;)V

    return-void
.end method
