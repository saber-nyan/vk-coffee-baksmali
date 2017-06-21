.class Lcom/vkcoffee/android/ui/SearchViewWrapper$8$1;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/SearchViewWrapper$8;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/SearchViewWrapper$8;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8$1;->this$1:Lcom/vkcoffee/android/ui/SearchViewWrapper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8$1;->this$1:Lcom/vkcoffee/android/ui/SearchViewWrapper$8;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$000(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 249
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$8$1;->this$1:Lcom/vkcoffee/android/ui/SearchViewWrapper$8;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 250
    return-void
.end method
