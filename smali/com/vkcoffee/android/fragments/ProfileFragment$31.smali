.class Lcom/vkcoffee/android/fragments/ProfileFragment$31;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->setStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->val$status:Ljava/lang/String;

    .line 5339
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 5364
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 5365
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->val$status:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$36(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/CharSequence;)V

    .line 5366
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5341
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->val$status:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->activity:Ljava/lang/String;

    .line 5342
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$29(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5343
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->updateList()V

    .line 5344
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    .line 5346
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "StatusSNL"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5347
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5348
    const-string v2, "prevStatus"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->val$status:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5349
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5351
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userstatus"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->val$status:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5352
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/MainActivity;

    if-eqz v1, :cond_1

    .line 5353
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/MainActivity;->getNavDelegate()Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->updateUserInfo()V

    .line 5361
    :cond_0
    :goto_0
    return-void

    .line 5354
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/FragmentWrapperActivity;

    if-eqz v1, :cond_0

    .line 5355
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$31;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/FragmentWrapperActivity;->getNavDelegate()Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    move-result-object v0

    .line 5356
    .local v0, "d":Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
    if-eqz v0, :cond_0

    .line 5357
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->updateUserInfo()V

    goto :goto_0
.end method
