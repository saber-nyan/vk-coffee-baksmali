.class Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ServicesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    .line 181
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.RELOAD_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->access$2(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 187
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 188
    return-void
.end method
