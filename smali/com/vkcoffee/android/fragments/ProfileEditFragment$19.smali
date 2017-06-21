.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$19;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->deletePhoto()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$19;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 633
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$19;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3
    .param p1, "newPhoto"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$19;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$0(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Ljava/lang/String;)V

    .line 636
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v1, "id"

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$19;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 640
    return-void
.end method
