.class Lcom/vkcoffee/android/fragments/ProfileFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 344
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v0, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 349
    :cond_0
    const-string v0, "com.vkcoffee.android.RELOAD_PROFILE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 352
    :cond_1
    return-void
.end method
