.class Lcom/vkcoffee/android/fragments/SettingsListFragment$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;->deletePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .line 360
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsListFragment$4;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 4
    .param p1, "newPhoto"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 363
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "photo"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 366
    :cond_0
    return-void
.end method
