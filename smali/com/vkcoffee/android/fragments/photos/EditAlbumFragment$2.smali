.class Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "EditAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    .line 214
    invoke-direct {p0}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$1(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$2(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v1, v1, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    iput-object v1, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    .line 219
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$4(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v1, v1, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    iput-object v1, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    .line 220
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$5(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->canUpload:Z

    .line 221
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$6(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->commentsDisabled:Z

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, "r":Landroid/content/Intent;
    const-string v1, "album"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 225
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 226
    return-void
.end method
