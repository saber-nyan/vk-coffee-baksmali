.class Lcom/vkcoffee/android/DecrEncr$2$1;
.super Ljava/lang/Object;
.source "DecrEncr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DecrEncr$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/DecrEncr$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$pass:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DecrEncr$2;Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/DecrEncr$2$1;->this$1:Lcom/vkcoffee/android/DecrEncr$2;

    iput-object p2, p0, Lcom/vkcoffee/android/DecrEncr$2$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkcoffee/android/DecrEncr$2$1;->val$pass:Landroid/widget/EditText;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$2$1;->val$activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 218
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$2$1;->val$pass:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 219
    return-void
.end method
