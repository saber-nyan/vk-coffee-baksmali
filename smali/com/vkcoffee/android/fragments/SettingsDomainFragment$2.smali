.class Lcom/vkcoffee/android/fragments/SettingsDomainFragment$2;
.super Ljava/lang/Object;
.source "SettingsDomainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 106
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 110
    .local v0, "cm":Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$000(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080290

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method
