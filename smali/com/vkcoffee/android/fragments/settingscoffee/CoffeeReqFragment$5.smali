.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$5;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->w3()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;Ljava/lang/String;Landroid/app/Activity;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
