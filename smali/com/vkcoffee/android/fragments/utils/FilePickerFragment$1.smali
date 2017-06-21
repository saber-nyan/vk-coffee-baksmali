.class Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FilePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1$1;-><init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;)V

    .line 103
    .local v0, "r":Ljava/lang/Runnable;
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ViewUtils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
