.class Lcom/vkcoffee/android/stickers/KeyboardPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/KeyboardPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$1;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string/jumbo v0, "com.vkcoffee.andoroid.HIDE_EMOJI_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$1;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->hide()V

    .line 53
    :cond_0
    return-void
.end method
