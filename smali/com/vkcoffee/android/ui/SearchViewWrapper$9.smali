.class Lcom/vkcoffee/android/ui/SearchViewWrapper$9;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;->submitQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$9;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$9;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$000(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 348
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$9;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 349
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$9;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 350
    return-void
.end method
