.class Lcom/vkcoffee/android/fragments/ProfileFragment$29;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->showStatusEditDlg(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$29;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$29;->val$ed:Landroid/widget/EditText;

    .line 5288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5291
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 5292
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$29;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$29;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$35(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/String;)V

    .line 5297
    :goto_0
    return-void

    .line 5294
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$29;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u0435 \u0430\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
