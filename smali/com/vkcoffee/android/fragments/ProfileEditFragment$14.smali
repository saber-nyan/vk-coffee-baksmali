.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$14;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->cancelNameRequest()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$14;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 447
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;)V
    .locals 3
    .param p1, "res"    # Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$14;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0802bc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$14;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$14;->success(Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;)V

    return-void
.end method
