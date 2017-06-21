.class Lcom/vkcoffee/android/fragments/ProfileFragment$9;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$9;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1938
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$9;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$9;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080274

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1943
    :cond_0
    return-void
.end method
