.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$1;
.super Ljava/lang/Object;
.source "CoffeeOnlineFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 146
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v1

    const-string v2, "stayOnlinePref"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 147
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    .line 150
    return-void
.end method
