.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2$1;
.super Ljava/lang/Object;
.source "CoffeeOnlineFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 92
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v1

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 93
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 94
    return-void
.end method
