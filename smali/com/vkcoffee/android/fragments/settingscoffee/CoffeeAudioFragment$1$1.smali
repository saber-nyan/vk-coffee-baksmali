.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$1;
.super Ljava/lang/Object;
.source "CoffeeAudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    move-result-object v1

    const-string v2, "customDirCh"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 74
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 75
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u041d\u0435 \u0445\u043e\u0442\u0438\u0442\u0435 \u043a\u0430\u043a \u0445\u043e\u0442\u0438\u0442\u0435..."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 77
    return-void
.end method
