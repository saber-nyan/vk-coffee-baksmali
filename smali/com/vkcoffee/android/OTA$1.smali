.class Lcom/vkcoffee/android/OTA$1;
.super Landroid/content/BroadcastReceiver;
.source "OTA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/OTA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/OTA;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/OTA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/OTA$1;->this$0:Lcom/vkcoffee/android/OTA;

    .line 83
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "YES_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$0()Lcom/vkcoffee/android/VKAlertDialog$Builder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Lcom/vkcoffee/android/OTA;->startUpdate()V

    .line 93
    :cond_0
    return-void
.end method
