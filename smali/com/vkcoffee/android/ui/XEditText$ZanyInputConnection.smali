.class Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "XEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/XEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZanyInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/XEditText;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/XEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;->this$0:Lcom/vkcoffee/android/ui/XEditText;

    .line 45
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;->this$0:Lcom/vkcoffee/android/ui/XEditText;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/XEditText;->access$000(Lcom/vkcoffee/android/ui/XEditText;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;->this$0:Lcom/vkcoffee/android/ui/XEditText;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/XEditText;->access$000(Lcom/vkcoffee/android/ui/XEditText;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;->this$0:Lcom/vkcoffee/android/ui/XEditText;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
