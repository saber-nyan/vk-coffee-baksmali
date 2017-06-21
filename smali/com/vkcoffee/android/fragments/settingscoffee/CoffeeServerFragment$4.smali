.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$4;
.super Ljava/lang/Object;
.source "CoffeeServerFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 113
    new-instance v0, Lcom/vkcoffee/android/LoadData;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/LoadData;-><init>(Landroid/app/Activity;Z)V

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    return v2
.end method
