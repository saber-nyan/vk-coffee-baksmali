.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$1;
.super Ljava/lang/Object;
.source "CoffeeAudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041d\u0435 \u0445\u043e\u0442\u0438\u0442\u0435 \u043a\u0430\u043a \u0445\u043e\u0442\u0438\u0442\u0435..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void
.end method
