.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$7;
.super Ljava/lang/Object;
.source "CoffeeReqFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->suppIDget()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;ILandroid/app/Activity;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
