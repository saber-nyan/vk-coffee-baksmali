.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$3;
.super Ljava/lang/Object;
.source "CoffeeBotFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    const v4, 0x7f10001b

    .line 134
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isEmptyCrazy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;-><init>()V

    .line 136
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "bundleFirstStart":Landroid/os/Bundle;
    const-string v2, "id"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 139
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->onCrazyMode()V

    .line 140
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->onEmptyCrazyMode()V

    .line 141
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "DialogsFragment"

    invoke-virtual {v2, v4, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 151
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 143
    .end local v0    # "bundleFirstStart":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;-><init>()V

    .line 144
    .restart local v1    # "fragment":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .restart local v0    # "bundleFirstStart":Landroid/os/Bundle;
    const-string v2, "id"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 147
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->onCrazyMode()V

    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "DialogsFragment"

    invoke-virtual {v2, v4, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
