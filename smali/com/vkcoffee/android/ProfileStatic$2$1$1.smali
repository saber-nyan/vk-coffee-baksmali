.class Lcom/vkcoffee/android/ProfileStatic$2$1$1;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic$2$1;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ProfileStatic$2$1;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ProfileStatic$2$1;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$2$1$1;->this$2:Lcom/vkcoffee/android/ProfileStatic$2$1;

    iput-object p2, p0, Lcom/vkcoffee/android/ProfileStatic$2$1$1;->val$activity:Landroid/app/Activity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileStatic$2$1$1;->val$activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    sget-object v1, Lcom/vkcoffee/android/ProfileStatic;->res:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileStatic$2$1$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0430"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method
