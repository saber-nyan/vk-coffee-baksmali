.class Lcom/vkcoffee/android/AudioPlayerActivity$17;
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
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$17;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$17;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$17;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$17;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$17;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v1, 0x7f08053f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    const/4 v0, 0x1

    return v0
.end method
