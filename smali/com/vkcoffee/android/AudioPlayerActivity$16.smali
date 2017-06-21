.class Lcom/vkcoffee/android/AudioPlayerActivity$16;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$16;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 533
    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->onSimMode()V

    .line 534
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$16;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setOid(I)V

    .line 535
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$16;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setAid(I)V

    .line 536
    const-class v0, Lcom/vkcoffee/android/fragments/AudioListFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$16;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 537
    const/4 v0, 0x1

    return v0
.end method
