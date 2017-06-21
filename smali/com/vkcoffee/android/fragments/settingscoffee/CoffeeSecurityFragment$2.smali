.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$2;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 81
    new-instance v0, Lcom/vkcoffee/android/PasswordCoffee;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/PasswordCoffee;-><init>(Landroid/app/Activity;I)V

    .line 82
    return v2
.end method
