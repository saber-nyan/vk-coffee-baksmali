.class Lcom/vkcoffee/android/dialogs/PromptDialog$2;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/dialogs/PromptDialog;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/dialogs/PromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/dialogs/PromptDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$2;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$2;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$200(Lcom/vkcoffee/android/dialogs/PromptDialog;Landroid/text/Editable;)V

    .line 60
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 50
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 55
    return-void
.end method
