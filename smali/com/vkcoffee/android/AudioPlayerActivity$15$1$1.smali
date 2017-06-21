.class Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/AudioPlayerActivity$15$1;

.field private final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$15$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$15$1;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;->val$list:Ljava/util/ArrayList;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 506
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;->val$list:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/AudioFile;

    .line 508
    .local v2, "audioFile":Lcom/vkcoffee/android/AudioFile;
    iget-object v0, v2, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    .line 509
    .local v0, "artist":Ljava/lang/String;
    iget-object v4, v2, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    .line 510
    .local v4, "title":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "audio":Ljava/lang/String;
    iget-object v5, v2, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    .line 513
    .local v5, "url":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$15$1;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->access$1(Lcom/vkcoffee/android/AudioPlayerActivity$15$1;)Lcom/vkcoffee/android/AudioPlayerActivity$15;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerActivity$15;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$15;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v6

    const-class v7, Lcom/vkcoffee/android/DownloaderSNL;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v3, "i":Landroid/content/Intent;
    const-string v6, "fileName"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v6, "url"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v6, "exten"

    const-string v7, ".mp3"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$15$1;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->access$1(Lcom/vkcoffee/android/AudioPlayerActivity$15$1;)Lcom/vkcoffee/android/AudioPlayerActivity$15;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerActivity$15;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$15;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 519
    return-void
.end method
