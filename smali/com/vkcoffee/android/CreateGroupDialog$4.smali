.class Lcom/vkcoffee/android/CreateGroupDialog$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "CreateGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/CreateGroupDialog;->createGroup(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/CreateGroupDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/CreateGroupDialog;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/CreateGroupDialog;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vkcoffee/android/CreateGroupDialog$4;->this$0:Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/Group;)V
    .locals 1
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vkcoffee/android/data/Groups;->addGroup(Lcom/vkcoffee/android/api/Group;Z)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog$4;->this$0:Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-virtual {v0}, Lcom/vkcoffee/android/CreateGroupDialog;->dismiss()V

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog$4;->this$0:Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/CreateGroupDialog;->access$200(Lcom/vkcoffee/android/CreateGroupDialog;Lcom/vkcoffee/android/api/Group;)V

    .line 146
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, Lcom/vkcoffee/android/api/Group;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/CreateGroupDialog$4;->success(Lcom/vkcoffee/android/api/Group;)V

    return-void
.end method
