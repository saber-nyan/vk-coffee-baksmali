.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$3;
.super Ljava/lang/Object;
.source "CoffeeSecurityFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;Landroid/app/Activity;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
