.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;
.super Ljava/lang/Object;
.source "CoffeeOnlineFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    const v3, 0x430e068

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/vkcoffee/android/Platform;->ModalPlatform(Landroid/app/Activity;ZZ)V

    .line 82
    return v1

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
