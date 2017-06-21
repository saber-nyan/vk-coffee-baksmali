.class Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "SettingsDomainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 56
    .local v0, "cm":Landroid/content/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "domain"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080290

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 58
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 63
    return-void
.end method
