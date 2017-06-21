.class Lcom/vkcoffee/android/GameCardActivity$4;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "GameCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GameCardActivity;->doRemoveApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/GameCardActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/GameCardActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/GameCardActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/vkcoffee/android/GameCardActivity$4;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity$4;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.games.RELOAD_INSTALLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/GameCardActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 256
    return-void
.end method
