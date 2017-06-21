.class Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SettingsDomainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;->val$domain:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, "res":Landroid/content/Intent;
    const-string/jumbo v1, "new_domain"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;->val$domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 214
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 215
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 208
    check-cast p1, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;->success(Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;)V

    return-void
.end method
