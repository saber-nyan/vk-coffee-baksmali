.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const-string v0, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v1, "photo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$0(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
