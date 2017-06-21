.class public Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "SDKFriendPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x1020002

    .line 19
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;->newInstance(Landroid/os/Bundle;)Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 23
    :cond_0
    return-void
.end method
