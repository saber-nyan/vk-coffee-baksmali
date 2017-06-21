.class Lcom/vkcoffee/android/CreateGroupDialog$1;
.super Ljava/lang/Object;
.source "CreateGroupDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/CreateGroupDialog;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/CreateGroupDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/CreateGroupDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/CreateGroupDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkcoffee/android/CreateGroupDialog$1;->this$0:Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog$1;->this$0:Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/CreateGroupDialog;->access$000(Lcom/vkcoffee/android/CreateGroupDialog;)V

    .line 103
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    return-void
.end method
