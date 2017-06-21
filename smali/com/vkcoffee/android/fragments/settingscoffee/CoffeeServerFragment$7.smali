.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$7;
.super Ljava/lang/Object;
.source "CoffeeServerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->got(Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 183
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    const-string v2, "publicTest"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 184
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 186
    return-void
.end method
