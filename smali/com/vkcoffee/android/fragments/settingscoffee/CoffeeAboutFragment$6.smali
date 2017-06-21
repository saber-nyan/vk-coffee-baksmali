.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;
.super Ljava/lang/Object;
.source "CoffeeAboutFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "don"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    const-class v1, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 115
    return v3
.end method
